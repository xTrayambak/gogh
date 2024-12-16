#include <LScreenshotRequest.h>
#include <LSessionLockRole.h>
#include <LLog.h>
#include <LPainter.h>
#include <LOpenGL.h>
#include <LAnimation.h>
#include <stdexcept>
#include "Compositor.h"
#include "Output.h"
#include "Surface.h"
#include "utils/Global.h"

void Output::initializeGL()
{
    G::scene().handleInitializeGL(this);

    /* Fade-in animation example */

    LWeak<Output> weakRef { this };
    fadeInView.insertAfter(&G::layers()[LLayerOverlay]);
    fadeInView.setOpacity(0.f);

    LAnimation::oneShot(1000, // Ms
    [weakRef](LAnimation *anim) // On Update
    {
        // Oops the output was probably unplugged!
        if (!weakRef)
        {
            anim->stop();
            return;
        }

        weakRef->fadeInView.setPos(weakRef->pos());
        weakRef->fadeInView.setSize(weakRef->size());
        weakRef->fadeInView.setOpacity(1.f - powf(anim->value(), 5.f));
        weakRef->repaint();
    },
    [weakRef](LAnimation *) // On Finish
    {
        // Remove it from the scene
        if (weakRef)
            weakRef->fadeInView.setParent(nullptr);
    });

    static char *frag = LOpenGL::openShader("../src/shaders/shader.frag");
    static char *vert = LOpenGL::openShader("../src/shaders/shader.vert");

    if (frag == nullptr)
	throw std::runtime_error("Failed to load fragment shader!");

    if (vert == nullptr)
	throw std::runtime_error("Failed to load vertex shader!");

    LLog::log("Fragment shader: %s", frag);
    LLog::log("Vertex shader: %s", vert);

    LPainter::imp()->vertexShader = LOpenGL::compileShader(GL_VERTEX_SHADER, vert);
    LPainter::imp()->fragmentShader = LOpenGL::compileShader(GL_FRAGMENT_SHADER, frag);
}

void Output::paintGL()
{
    Surface *fullscreenSurface { searchFullscreenSurface() };

    if (fullscreenSurface)
    {
        /*
         * Content Type
         *
         * This hint can be passed to outputs to optimize content display.
         * For example, if the content type is "Game", a TV plugged in via HDMI may try to reduce latency.
         */
        // setContentType(fullscreenSurface->contentType());

        /*
         * V-SYNC
         *
         * Clients can suggest enabling or disabling v-sync for specific surfaces using LSurface::preferVSync().
         * For instance, you may choose to enable or disable it when displaying a toplevel surface in fullscreen mode.
         * Refer to LOutput::enableVSync() for more information.
         */
        enableVSync(fullscreenSurface->preferVSync());

        /*
         * Oversampling:
         *
         * When you assign a fractional scale to an output, oversampling is enabled by default to mitigate aliasing artifacts,
         * but this may impact performance.
         * For instance, you might want to switch off oversampling when displaying a fullscreen surface. Refer to enableFractionalOversampling().
         *
         * Note: Oversampling is unnecessary and always disabled when using integer scales. Therefore, it's recommended to stick with integer scales
         * and select an appropriate LOutputMode that suits your requirements.
         */
        // enableFractionalOversampling(false);

        /*
         * Direct Scanout
         *
         * Directly scanning fullscreen surfaces reduces GPU consumption and latency. However, there are several conditions
         * to consider before doing so, such as ensuring there is no overlay content like subsurfaces, popups,
         * notifications (as these won't be displayed), or screenshot requests which are always denied.
         * Refer to LOutput::setCustomScanoutBuffer() for more information.
         */
        /* if (tryDirectScanout(fullscreenSurface))
            return; // On success, avoid doing any rendering. */
    }
    else
    {
        // setContentType(LContentTypeNone);
        // enableFractionalOversampling(true);
    }

    /* Let our scene do its magic */
    G::scene().handlePaintGL(this);

    /* Screen capture requests for this single frame */
    for (LScreenshotRequest *req : screenshotRequests())
        req->accept(true);
}

void Output::moveGL()
{
    G::scene().handleMoveGL(this);
}

void Output::resizeGL()
{
    G::scene().handleResizeGL(this);
}

void Output::uninitializeGL()
{
    G::scene().handleUninitializeGL(this);
}

void Output::setGammaRequest(LClient *client, const LGammaTable *gamma)
{
    L_UNUSED(client)
    setGamma(gamma);
}

void Output::availableGeometryChanged()
{
    /* Refer to the default implementation in the documentation. */
    LOutput::availableGeometryChanged();
}

Surface *Output::searchFullscreenSurface() const noexcept
{
    /*
     * When the session is locked the locking client creates a fullscreen
     * surface for each initialized output
     */
    if (sessionLockRole() && sessionLockRole()->surface()->mapped())
        return static_cast<Surface*>(sessionLockRole()->surface());

    /*
     * Louvre moves fullscreen toplevels to the top layer.
     * The default implementation of LToplevelRole (which is partially used by our ToplevelRole)
     * stores the output in its exclusiveOutput() property
     */
    for (auto it = compositor()->layer(LLayerTop).rbegin();it != compositor()->layer(LLayerTop).rend(); it++)
        if ((*it)->mapped() && (*it)->toplevel() && (*it)->toplevel()->fullscreen() && (*it)->toplevel()->exclusiveOutput() == this)
            return static_cast<Surface*>(*it);

    // No fullscreen surfaces on this output
    return nullptr;
}

bool Output::tryDirectScanout(Surface *surface) noexcept
{
    return false;
}

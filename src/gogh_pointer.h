#ifndef GOGH_POINTER_H_
#define GOGH_POINTER_H_
 
#include <LPointer.h>
 
using namespace Louvre;
 
class GoghPointer : public LPointer
{
public:
    GoghPointer(LPointer::Params *params);
 
    void pointerMoveEvent(Float32 x, Float32 y, bool absolute) override;
    void pointerButtonEvent(Button button, ButtonState state) override;
    void setCursorRequest(LCursorRole *role) override;
    // void pointerAxisEvent(Float64 axisX, Float64 axisY, Int32 discreteX, Int32 discreteY, AxisSource source) override;
};
 
#endif

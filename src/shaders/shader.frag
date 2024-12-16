precision mediump float;

varying vec2 TexCoord;           // From vertex shader
uniform sampler2D texture1;      // Input texture
uniform vec2 texelSize;          // Size of one texel (1.0 / textureWidth, 1.0 / textureHeight)

void main() {
    vec4 color = texture2D(texture1, TexCoord);

    // If alpha is 1, use the original color
    if (color.a >= 1.0) {
        gl_FragColor = color;
        return;
    }

    // Apply a simple box blur for alpha < 1
    vec4 blurColor = vec4(0.0);

    // Fixed kernel for a 3x3 blur
    blurColor += texture2D(texture1, TexCoord + texelSize * vec2(-1.0, -1.0)) * 1.0;
    blurColor += texture2D(texture1, TexCoord + texelSize * vec2( 0.0, -1.0)) * 2.0;
    blurColor += texture2D(texture1, TexCoord + texelSize * vec2( 1.0, -1.0)) * 1.0;

    blurColor += texture2D(texture1, TexCoord + texelSize * vec2(-1.0,  0.0)) * 2.0;
    blurColor += texture2D(texture1, TexCoord + texelSize * vec2( 0.0,  0.0)) * 4.0;
    blurColor += texture2D(texture1, TexCoord + texelSize * vec2( 1.0,  0.0)) * 2.0;

    blurColor += texture2D(texture1, TexCoord + texelSize * vec2(-1.0,  1.0)) * 1.0;
    blurColor += texture2D(texture1, TexCoord + texelSize * vec2( 0.0,  1.0)) * 2.0;
    blurColor += texture2D(texture1, TexCoord + texelSize * vec2( 1.0,  1.0)) * 1.0;

    // Normalize the blur color by the kernel sum (16.0)
    blurColor /= 16.0;

    // Output the blurred color
    gl_FragColor = blurColor;
}


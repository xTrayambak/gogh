#ifndef FRAGMENT_H_
#define FRAGMENT_H_

inline static constexpr auto FRAGMENT_SHADER = R"#(
	precision lowp float;
        precision lowp int;
        uniform lowp sampler2D tex;

        uniform bool colorFactorEnabled;
        uniform lowp int mode;
        uniform lowp float alpha;
        uniform lowp vec3 color;
        uniform lowp vec4 colorFactor;
        varying lowp vec2 v_texcoord;

        void main()
        {
            // Texture
            if (mode == 0)
            {
                gl_FragColor = texture2D(tex, v_texcoord);
                gl_FragColor.w *= alpha;
            }

            // Solid color
            else if (mode == 1)
            {
                gl_FragColor.xyz = color;
                gl_FragColor.w = alpha;
            }

            // Colored texture
            else if (mode == 2)
            {
                gl_FragColor.xyz = color;
                gl_FragColor.w = texture2D(tex, v_texcoord).w * alpha;
            }

            if (colorFactorEnabled)
                gl_FragColor *= colorFactor;
        }
)#";

#endif

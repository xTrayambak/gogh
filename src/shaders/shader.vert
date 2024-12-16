precision mediump float;
precision mediump int;
uniform mediump vec2 texSize;
uniform mediump vec4 srcRect;
attribute mediump vec4 vertexPosition;
varying mediump vec2 v_texcoord;
uniform lowp int mode;
uniform bool has90deg;

void main()
{
	gl_Position = vec4(vertexPosition.xy, 0.0, 1.0);

        if (mode == 1)
        {
        	if (vertexPosition.x == -1.0)
                    v_texcoord.x = srcRect.x;
                else
                    v_texcoord.x = srcRect.z;

                if (vertexPosition.y == 1.0)
                    v_texcoord.y = srcRect.y;
                else
                    v_texcoord.y = srcRect.w;

                if (has90deg)
                    v_texcoord.yx = v_texcoord;

                return;
        }
        else if (mode == 0)
        {
        	v_texcoord.x = (srcRect.x + vertexPosition.z*srcRect.z) / texSize.x;
                v_texcoord.y = (srcRect.y + srcRect.w - vertexPosition.w*srcRect.w) / texSize.y;
        }
}

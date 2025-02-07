#pragma header
 
uniform float aberration = 0.0;

void main()
{
    vec2 uv = openfl_TextureCoordv;
    vec2 trueAberration = aberration * pow((uv - 0.5), vec2(3.0, 3.0));
    gl_FragColor = vec4(
        texture2D(bitmap, uv + trueAberration).r, 
        texture2D(bitmap, uv).g, 
        texture2D(bitmap, uv - trueAberration).b, 
        flixel_texture2D(bitmap,uv).a
    );
 }

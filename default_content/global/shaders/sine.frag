#pragma header
uniform float iTime;
void main(){
    vec2 uv = openfl_TextureCoordv.xy;
    uv.x += sin(uv.y * 20.0 + iTime / 4.0) / 60.0;
    gl_FragColor = flixel_texture2D(bitmap, uv);
}
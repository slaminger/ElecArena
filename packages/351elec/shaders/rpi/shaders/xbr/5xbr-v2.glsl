// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying
#define COMPAT_ATTRIBUTE attribute
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord1;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _OUT._t1.xy = TexCoord.xy + vec2(-_ps.x, 0.00000000E+00);
    _OUT._t2.xy = TexCoord.xy + vec2(_ps.x, 0.00000000E+00);
    _OUT._t3.xy = TexCoord.xy + vec2(0.00000000E+00, -_ps.y);
    _OUT._t4.xy = TexCoord.xy + vec2(0.00000000E+00, _ps.y);
    _OUT._t1.zw = TexCoord.xy + vec2(-_ps.x, -_ps.y);
    _OUT._t2.zw = TexCoord.xy + vec2(-_ps.x, _ps.y);
    _OUT._t3.zw = TexCoord.xy + vec2(_ps.x, -_ps.y);
    _OUT._t4.zw = TexCoord.xy + vec2(_ps.x, _ps.y);
    _ret_0._position1 = _r0006;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord1 = TexCoord.xy;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    _ret_0._t4 = _OUT._t4;
    gl_Position = _r0006;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    TEX4 = _OUT._t4;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord1;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _color1;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
};
vec4 _ret_0;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0014;
float _TMP33;
float _TMP37;
float _TMP41;
float _TMP45;
float _TMP49;
float _TMP53;
float _TMP57;
float _TMP61;
float _TMP65;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _fp;
    vec3 _res;
    _x0014 = TEX0.xy*TextureSize;
    _fp = fract(_x0014);
    _TMP0 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _TMP1 = COMPAT_TEXTURE(Texture, TEX3.xy);
    _TMP2 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _TMP3 = COMPAT_TEXTURE(Texture, TEX1.xy);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP5 = COMPAT_TEXTURE(Texture, TEX2.xy);
    _TMP6 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _TMP7 = COMPAT_TEXTURE(Texture, TEX4.xy);
    _TMP8 = COMPAT_TEXTURE(Texture, TEX4.zw);
    _TMP33 = dot(_TMP0.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP37 = dot(_TMP1.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP41 = dot(_TMP2.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP45 = dot(_TMP3.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP49 = dot(_TMP4.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP53 = dot(_TMP5.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP57 = dot(_TMP6.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP61 = dot(_TMP7.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP65 = dot(_TMP8.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _res = _TMP4.xyz;
    if (_TMP49 != _TMP61 && _TMP61 == _TMP53 && (_TMP49 != _TMP65 && (_TMP49 != _TMP37 || _TMP49 != _TMP45 || _TMP53 != _TMP37 && _TMP53 != _TMP41 || _TMP61 != _TMP45 && _TMP61 != _TMP57) || _TMP49 == _TMP57 && (_TMP65 == _TMP61 || _TMP49 == _TMP45 || _TMP61 != _TMP45) || _TMP49 == _TMP41 && (_TMP65 == _TMP61 || _TMP49 == _TMP37 || _TMP53 != _TMP37))) { 
        if (_fp.y + _fp.x > 1.50000000E+00 || _TMP49 == _TMP41 && _TMP49 == _TMP45 && _TMP61 == _TMP57 && _fp.y + 5.00000000E-01*_fp.x > 1.00000000E+00 || _TMP49 == _TMP57 && _TMP49 == _TMP37 && _TMP53 == _TMP41 && _fp.y + 2.00000000E+00*_fp.x > 2.00000000E+00) { 
            _res = _TMP7.xyz;
        } 
    } 
    if (_TMP49 != _TMP53 && _TMP53 == _TMP37 && (_TMP49 != _TMP41 && (_TMP49 != _TMP45 || _TMP49 != _TMP61 || _TMP37 != _TMP45 && _TMP37 != _TMP33 || _TMP53 != _TMP61 && _TMP53 != _TMP65) || _TMP49 == _TMP65 && (_TMP41 == _TMP53 || _TMP49 == _TMP61 || _TMP53 != _TMP61) || _TMP49 == _TMP33 && (_TMP41 == _TMP53 || _TMP49 == _TMP45 || _TMP37 != _TMP45))) { 
        if (-_fp.y + _fp.x > 5.00000000E-01 || _TMP49 == _TMP33 && _TMP49 == _TMP61 && _TMP53 == _TMP65 && -_fp.y + 2.00000000E+00*_fp.x > 1.00000000E+00 || _TMP49 == _TMP65 && _TMP49 == _TMP45 && _TMP37 == _TMP33 && -_fp.y + 5.00000000E-01*_fp.x > 0.00000000E+00) { 
            _res = _TMP5.xyz;
        } 
    } 
    if (_TMP49 != _TMP37 && _TMP37 == _TMP45 && (_TMP49 != _TMP33 && (_TMP49 != _TMP61 || _TMP49 != _TMP53 || _TMP45 != _TMP61 && _TMP45 != _TMP57 || _TMP37 != _TMP53 && _TMP37 != _TMP41) || _TMP49 == _TMP41 && (_TMP33 == _TMP37 || _TMP49 == _TMP53 || _TMP37 != _TMP53) || _TMP49 == _TMP57 && (_TMP33 == _TMP37 || _TMP49 == _TMP61 || _TMP45 != _TMP61))) { 
        if (-_fp.y + -_fp.x > -5.00000000E-01 || _TMP49 == _TMP57 && _TMP49 == _TMP53 && _TMP37 == _TMP41 && -_fp.y + -5.00000000E-01*_fp.x > -5.00000000E-01 || _TMP49 == _TMP41 && _TMP49 == _TMP61 && _TMP45 == _TMP57 && -_fp.y + -2.00000000E+00*_fp.x > -1.00000000E+00) { 
            _res = _TMP1.xyz;
        } 
    } 
    if (_TMP49 != _TMP45 && _TMP45 == _TMP61 && (_TMP49 != _TMP57 && (_TMP49 != _TMP53 || _TMP49 != _TMP37 || _TMP61 != _TMP53 && _TMP61 != _TMP65 || _TMP45 != _TMP37 && _TMP45 != _TMP33) || _TMP49 == _TMP33 && (_TMP57 == _TMP45 || _TMP49 == _TMP37 || _TMP45 != _TMP37) || _TMP49 == _TMP65 && (_TMP57 == _TMP45 || _TMP49 == _TMP53 || _TMP61 != _TMP53))) { 
        if (_fp.y + -_fp.x > 5.00000000E-01 || _TMP49 == _TMP65 && _TMP49 == _TMP37 && _TMP45 == _TMP33 && _fp.y + -2.00000000E+00*_fp.x > 0.00000000E+00 || _TMP49 == _TMP33 && _TMP49 == _TMP53 && _TMP61 == _TMP65 && _fp.y + -5.00000000E-01*_fp.x > 5.00000000E-01) { 
            _res = _TMP3.xyz;
        } 
    } 
    _ret_0 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif

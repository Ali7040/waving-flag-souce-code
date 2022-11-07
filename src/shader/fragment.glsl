
precision mediump float;
// varying float vRandom;
 uniform vec3 uColor ;
 uniform sampler2D uTexture ;
varying  vec2 vUv;

 void main()
{
     vec4 textureColor = texture2D(uTexture , vUv);
 gl_FragColor = textureColor ;
}
// 0.5 , 1.0, 1.0    vec4( 1.0 , 1.0 , 1.0 , 1.0)

uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform mat4 modelMatrix ;
uniform vec2 uFreqency ; 
uniform float uTime; 

attribute vec3 position;
attribute vec2 uv;
// attribute float aRandom;
varying  vec2 vUv;

varying float vRandom;

void main(){
           vec4 modelPosition = modelMatrix * vec4(position , 1.0);
           modelPosition.z += sin(modelPosition.x * uFreqency.x + uTime ) * 0.1 ;
           modelPosition.z += sin(modelPosition.y * uFreqency.y + uTime ) * 0.1 ;
           
     
         

            //   modelPosition.z += aRandom * 0.1;
           vec4 viewPosition = viewMatrix * modelPosition;
           vec4 projectionPosition = projectionMatrix * viewPosition;
           gl_Position = projectionPosition;


    // vRandom = aRandom;
//  gl_Position = projectionMatrix * viewMatrix * modelMatrix * vec4(position , 1.0);
    vUv = uv;
}
//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;   // 



// wave horizontal
const float speed = 0.0009;
const float Xfrequency = 3.0;
const float Xsize = 0.01;


void main()
{
	
	// horizontal wave            [     1 to -1      ]                            [ position     ]
	float Horizontal_Wave   = sin(time * speed + v_vTexcoord.y * Xfrequency) * (Xsize * v_vTexcoord.x) ;  
	
	
	vec4 distort = v_vColour * texture2D( gm_BaseTexture, vec2( v_vTexcoord.x + Horizontal_Wave , v_vTexcoord.y ) );
	
    gl_FragColor = distort;
	
	

}

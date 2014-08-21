#include "colors.inc"
#include "textures.inc"
#include "skies.inc"
#include "Hat.pov"
#include "Pot.pov"
#include "Rainbow.pov"
#include "Textures.inc"
#include "Jetty.pov"

global_settings { max_trace_level 256 }

camera {  right x*16/9 location <5, 5, -25> look_at <0,0,0> }
//camera {  right x*16/9 location <2, 1, -12> look_at <0,0,0> }

light_source { <30, 200, -150>, 1 }

sky_sphere{
	pigment{
		gradient <0,1,0>
		color_map{
		[0.0 color rgb<1,1,1>]
		[0.8 color rgb<0.1,0.25,0.75>]
		[1.0 color rgb<0.1,0.25,0.75>]}
		} // end pigment
}

#declare Island = height_field {
  png "HF101Island1.png"
  smooth
  texture{ t_mountain }
  translate <-0.5,0,-0.5>
  scale <16,10,16>  
} 

object{Hat}
object{Island}  
Rainbow()
object{PotOfGold}
//BGRainbow() 
Jetty(0 , 43, 0.25)

plane{ y, 0.01 texture{t_water}}

cylinder{
	<0,0,0>, <100,0,0>, 0.1
	pigment{ color Green}
}

cylinder{
	<0,0,0>, <0,100,0>, 0.1
	pigment{ color Red}
}

cylinder{
	<0,0,0>, <0,0,100>, 0.1
	pigment{ color Blue}
}


  

	

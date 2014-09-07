#include "glass.inc"
#include "glass_old.inc"
#include "colors.inc"
#include "textures.inc"
#include "skies.inc"
#include "Hat.pov"
#include "Pot.pov"
#include "Rainbow.pov"
#include "Textures.inc"
#include "Jetty.pov"

global_settings { max_trace_level 256 }

//camera {  right x*16/9 location <5, 5, -25> look_at <0,0,0> }
//camera {  right x*16/9 location <3, 1, 5> look_at <0,0,0> }

//the rotating camera: ----------
camera {
  location <0, 5, 25>
  right    x*16/9
  look_at  <0,0,0>

  	#if(clock <= 1)
  	translate <0, -(7*(clock/2)) , (-(25*(clock/2))) >
  	rotate <0,-360*(clock/2),0>
  	
  	#else
			translate <0, -(7*(0.5)) , (-(25*(0.5))) >
	  		rotate <0,-360*(0.5),0>
  	#end
}

 light_source {
    <-0.30,4,-15>
    color Green
    spotlight
    radius 1
    falloff 20
    tightness 5
    point_at <-0.30,1,-10.5>
  }

light_source{ 
	<30, 200, 150>, 0.5
}



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
  
  normal {
	  bump_map {
	  png "bumpmap"
	  bump_size 50
	  }  
  }
} 

object{Hat}
object{Island}  
Rainbow()
object{PotOfGold}
BGRainbow() 
Jetty(0 , 43, 0.3)
//plane{ y, 0.01 texture{t_water}}
HyperWater()

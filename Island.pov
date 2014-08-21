#include "colors.inc"
#include "textures.inc"
#include "skies.inc"
// declare rainbow's colors
global_settings { max_trace_level 256 }

#declare r_violet1 = color rgbf<1.0, 0.5, 1.0, 1.0>;
#declare r_violet2 = color rgbf<1.0, 0.5, 1.0, 0.8>;
#declare r_indigo  = color rgbf<0.5, 0.5, 1.0, 0.8>;
#declare r_blue    = color rgbf<0.2, 0.2, 1.0, 0.8>;
#declare r_cyan    = color rgbf<0.2, 1.0, 1.0, 0.8>;
#declare r_green   = color rgbf<0.2, 1.0, 0.2, 0.8>;
#declare r_yellow  = color rgbf<1.0, 1.0, 0.2, 0.8>;
#declare r_orange  = color rgbf<1.0, 0.5, 0.2, 0.8>;
#declare r_red1    = color rgbf<1.0, 0.2, 0.2, 0.8>;
#declare r_red2    = color rgbf<1.0, 0.2, 0.2, 1.0>;


#declare i = 0;
#while(i < 7)
 
        torus{
        15-(i*1),0.5
        pigment {
               
                #switch (i)
  				#case (1)
  				color r_blue
  				filter 0.6
  				#break //First case ends
  				#case (2)
				color r_green
				filter 0.6
  				#break //Third case ends
 				#case (3)
  				color r_red1
  				filter 0.6
  				#break
  
 				#else
				color r_indigo
				filter 0.6
 				#end // End of conditional part
        }
        rotate <90,0,0>
}
         #if(mod(i,3) = 0)
        light_source{ <-(30-(i*2)), 5, 0>
                                        color rgb <1,1,1>
                                        spotlight point_at <0, (30-(i*2)), 0>
                                }
        light_source{ <(30-(i*2)), 5, 0>
                                        color rgb <1,1,1>
                                        spotlight point_at <0, (30-(i*2)), 0>
                                }
        #end
#declare i = i+1;
#end


camera {  right x*16/9 location <1, 5, -25> look_at <1,0,0> }

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


#declare texWater = texture
{
  pigment{ rgb <.2,.2,.2> }
  
  normal{
    crackle 0.15
    turbulence 0.3              
    scale 0.2
  }                      
  
  finish{
    ambient 0.15
    diffuse 0.55
    brilliance 6.0
    phong 0.8
    phong_size 120
    reflection 0.6
  }
}

#declare HFTex = texture
{
  pigment{
   gradient <0,10,0>
   color_map{  
     [0.1 color DarkGreen]
     [0.2 color DarkBrown]
     [0.8 color White]
   }
   scale 1
  }
}  

#declare Island = height_field {
  png "HF101Island1.png"
  smooth
  texture{ HFTex }
  translate <-0.5,0,-0.5>
  scale <16,10,16>  
} 




object{Island}       

plane{ y, 0.01 texture{texWater}}

// create the rainbow
  rainbow {
    angle 42.5
    width 5
    distance 1.0e4
    direction <-0.2, -0.2, 1>
    jitter 0.01
    color_map {
      [0.000  color r_violet1]
      [0.100  color r_violet2]
      [0.214  color r_indigo]
      [0.328  color r_blue]
      [0.442  color r_cyan]
      [0.556  color r_green]
      [0.670  color r_yellow]
      [0.784  color r_orange]
      [0.900  color r_red1]
    }
  }


#include "colors.inc"
#include "textures.inc"
#include "skies.inc"

camera {  location <1, 5, -25> look_at <1,0,0> }
light_source { <30, 200, -150>, 1 }

sky_sphere{
 pigment{ gradient <0,1,0>
          color_map{
          [0.0 color rgb<1,1,1>        ]
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
     [0.3 color DarkGreen]
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

//plane{y,500 hollow} 


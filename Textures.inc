#include "colors.inc"

/*#declare t_water = texture
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
}*/

#declare t_mountain = texture
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

/*#declare t_trans_layer = texture
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
  }
}*/

#macro HyperWater()
//Ground Underneath
plane{<0,1,0>, 0  translate<0,0.000000001,0>
	texture{
		pigment{color LightWood}
		normal{
			bumps 0.25
			scale 0.05
		}
		finish{
			ambient 0.45
			diffuse 0.55
		}
	}
}

//Body of Water
plane{
	<0,5,0>, 0 translate<0,0.5,0>
	texture{ 
		Green_Glass
		normal{
			ripples 0.8
            scale 0.25
            turbulence 0.75
            translate<1,0,2>
		}
		finish{
			ambient 0.45
			diffuse 0.55
			reflection 0.3
		}
	}
	interior{I_Glass}
	translate<0,0,-(clock/2)>
}
#end


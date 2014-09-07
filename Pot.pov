#include "colors.inc"
#include "metals.inc"

#declare PotOfGold = union{
	
//Feet of the pot
	#declare ii = 0;	
	#while(ii < 361)
		difference{
			box{
				<0,0.1,0.1>, <1,-0.3,-0.1>
		
				pigment{color P_Brass1}
			}
	
			sphere{
				0, 0.2
				pigment{color P_Brass1}
				scale<1.5,1,1>
				translate<1,0.1,1.0>
			}
	
			sphere{
				0, 0.2
				pigment{color P_Brass1}
				translate<0.25,-0.3,0>
				scale<2,1.0,1.0>
			}
		translate<0,-0.7,0>
		rotate<0,ii,0>
		}
	#declare ii = ii + 90;
	#end

//Light in the Pot		
sphere{ 
	0,1 
	pigment { rgbt 1 } 
	hollow
	interior{ 
		media{ 
			emission <10,10,10>
       		density{ 
       			spherical density_map{ 
       				[0 rgb 0]
           			[0.4 rgb <1,1,0>]
           			[0.8 rgb <1,1,0>]
           			[1 rgb 1]
           		}
       		}
		}
	}
  //translate<1,1.75,1>
  scale<1.0,0.5,1.0>
}


//Bottom of Pot
union{
		difference{
			sphere{
				<0,0,0> 1
				//translate<1,1,1>
			}
			
			box{
				<1.25,0.25,1.25>,<-1.25,1.25,-1.25>
			}
			sphere{
				<0,0,0> 0.95
				//translate<1,1,1>
			}
			pigment{color P_Brass1}
		}
		torus{
			0.937, 0.08
			translate<0,0.25,0>
		}
	}
	scale< 0.25, 0.25, 0.25>
	translate<-0.30,1,-10.5>
}

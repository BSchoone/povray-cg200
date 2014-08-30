#include "colors.inc"

#declare PotOfGold = union{
	
//Feet of the pot
	#declare ii = 0;	
	#while(ii < 361)
		difference{
			box{
				<0,0.1,0.1>, <1,-0.3,-0.1>
		
				pigment{color Brown}
			}
	
			sphere{
				0, 0.2
				pigment{color Brown}
				scale<1.5,0,0>
				translate<1,0.1,0>
			}
	
			sphere{
				0, 0.2
				pigment{color Brown}
				translate<0.25,-0.3,0>
				scale<2,0,0>
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
			emission 1
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
  scale<0,0.5,0>
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
			pigment{color Brown}
		}
		torus{
			0.937, 0.08
			translate<0,0.25,0>
		}
	}
	scale< 0.25, 0.25, 0.25>
	translate<-0.75,1,-10.5>
}

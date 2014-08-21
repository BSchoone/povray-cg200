#macro PotOfGold()

// transparent sphere containing media  
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
  translate<1,1.75,1>
  scale<0,0.5,0>
}


difference{
	sphere{
		<0,0,0> 1
		translate<1,1,1>
	}
	
	box{
		<0,1.25,0>,<2,2.25,2>
	}
	sphere{
		<0,0,0> 0.95
		translate<1,1,1>
	}
	texture{Metal}
}
torus{
	0.937, 0.08
	translate<1,1.25,1>
}

#end

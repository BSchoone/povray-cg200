#include "colors.inc"

#declare Hat = union {
	// BottomOfHat
	cone {
		<0,-1,0>, 1, <0,1,0>, 1.0
		scale <0.5,0.07,0.5>
		rotate <0,0,-0.0>
		rotate <-0.0,0,0>
		rotate <0,-0.0,0>
		translate <0.0,0.0,0.0>
		pigment { Green }
	}
	// Belt
	cone {
		<0,-1,0>, 1, <0,1,0>, 1.0
		scale <0.32,0.07,0.32>
		rotate <0,0,-0.0>
		rotate <-0.0,0,0>
		rotate <0,-0.0,0>
		translate <0.0,0.15,0.0>
		pigment { Black }
	}
	//TopOfHat
	cone {
		<0,-1,0>, 1, <0,1,0>, 0.8
		scale <0.3,0.3,0.3>
		rotate <0,0,-0.0>
		rotate <-0.0,0,0>
		rotate <0,-0.0,0>
		translate <0.0,0.3,0.0>
		pigment { Green }
	}
	scale< 0.25, 0.25, 0.25>
	translate<-1.25,1,-10.5>
}

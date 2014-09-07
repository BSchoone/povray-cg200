#include "colors.inc"

#declare r_violet1 = color rgbf<1.0, 0.5, 1.0, 0.5>;
#declare r_violet2 = color rgbf<1.0, 0.5, 1.0, 0.4>;
#declare r_indigo  = color rgbf<0.5, 0.5, 1.0, 0.4>;
#declare r_blue    = color rgbf<0.2, 0.2, 1.0, 0.4>;
#declare r_cyan    = color rgbf<0.2, 1.0, 1.0, 0.4>;
#declare r_green   = color rgbf<0.2, 1.0, 0.2, 0.4>;
#declare r_yellow  = color rgbf<1.0, 1.0, 0.2, 0.4>;
#declare r_orange  = color rgbf<1.0, 0.5, 0.2, 0.4>;
#declare r_red1    = color rgbf<1.0, 0.2, 0.2, 0.4>;
#declare r_red2    = color rgbf<1.0, 0.2, 0.2, 0.5>;

#declare trans = 0.99;

#macro Rainbow ()
	#declare i = 1;
	#while(i < 8)
		    torus{
		    80-(i*1),0.5
		    pigment {
		            #switch (i)
	  				#case (1)
	  				color r_violet1
	  				filter trans
	  				#break 
	  				#case (2)
					color r_indigo
					filter trans
	  				#break 
	 				#case (3)
	  				color r_blue
	  				filter trans
	  				#break
	  				#case (4)
	  				color r_green
	  				filter trans
	  				#break
	 				#case (5)
	  				color r_yellow
	  				filter trans
	  				#break
	  				#case (6)
	  				color r_orange
	  				filter trans
	  				#break
	  				#case (7)
	  				color r_red1
	  				filter trans
	  				#break
	 				#end
		    }
		    translate<60,0,0>
		    rotate <90,0,0>
	}
	#declare i = i+1;
	#end
#end



#macro BGRainbow()
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
#end

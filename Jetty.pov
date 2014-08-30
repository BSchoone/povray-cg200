#include "colors.inc"

#macro Jetty(startFrom, endWhen, scaleFactor)
	#declare plankCount = 0;
	#declare jj = startFrom;
	#declare ii = endWhen;
	#while(jj < endWhen)
		box{
		    <0,2.25,-jj>,<-4.5,2.35,-jj+1.25>
			texture{
				DMFLightOak
				rotate x*90 
			} 
		
		scale <scaleFactor, scaleFactor, scaleFactor>
		}
		#if (mod(plankCount, 3) = 0)
		cylinder{
			<0,2.5,-jj-0.2>, <0,-10,-jj>, 0.4
			scale <scaleFactor, scaleFactor, scaleFactor>
			texture{
				DMFLightOak
				rotate x*90 
			}
		}

		cylinder{
			<-4.5,2.5,-jj-0.2>, <-4.5,-10,-jj>, 0.4
			scale <scaleFactor, scaleFactor, scaleFactor>
			texture{
				DMFLightOak
				rotate x*90 
			}
		}

		#end
		#declare jj = jj + 1.4;
		#declare plankCount = plankCount + 1;
	#end
#end

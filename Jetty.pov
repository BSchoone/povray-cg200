

#macro Jetty(startFrom, endWhen, scaleFactor)
	#declare jj = startFrom;
	#declare ii = endWhen;
	#while(jj < endWhen)
		box{
		    <0,2.25,jj>,<1.5,2.35,jj+1>
			texture{
				DMFLightOak
				rotate x*90 
			}
		scale <scaleFactor, scaleFactor, scaleFactor>
		    
		#declare jj = jj + 1.2;
		}
	#end
#end

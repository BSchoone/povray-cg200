default: clean
	povray Island.pov "res[360p]"
	convert -antialias Island*.png FinalAnimation.gif

480: clean
	povray Island.pov "res[480p]"
	convert -antialias Island*.png FinalAnimation.gif

720: clean
	 povray Island.pov "res[720p]"
	 convert -antialias Island*.png FinalAnimation.gif
	 
1080: clean
	povray Island.pov "res[1080p]"
	convert -antialias Island*.png FinalAnimation.gif

4k: clean
	povray Island.pov "res[4k]"
	convert -antialias Island*.png FinalAnimation.gif


clean:
	$(RM) *.*~ Island*.png

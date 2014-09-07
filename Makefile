default: clean
	povray Island.pov "res[360p]"
	convert -antialias Island*.png 360Animation.mp4

480: clean
	povray Island.pov "res[480p]"
	convert -antialias Island*.png 480Animation.gif

720: clean
	 povray Island.pov "res[720p]"
	 convert -antialias Island*.png 720Animation.gif
	 
1080: clean
	povray Island.pov "res[1080p]"
	convert -antialias Island*.png 1080Animation.gif

4k: clean
	povray Island.pov "res[4k]"
	convert -antialias Island*.png 4kAnimation.gif


clean:
	$(RM) *.*~ Island*.png

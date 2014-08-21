default:
	povray Island.pov "res[360p]"

480:
	povray Island.pov "res[480p]"

720:
	 povray Island.pov "res[720p]"
	 
1080:
	povray Island.pov "res[1080p]"

4k:
	povray Island.pov "res[4k]"


clean:
	$(RM) *.*~ Island*.png

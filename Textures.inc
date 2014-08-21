#declare t_water = texture
{
  pigment{ rgb <.2,.2,.2> }
  
  normal{
    crackle 0.15
    turbulence 0.3              
    scale 0.2
  }                      
  
  finish{
    ambient 0.15
    diffuse 0.55
    brilliance 6.0
    phong 0.8
    phong_size 120
    reflection 0.6
  }
}

#declare t_mountain = texture
{
  pigment{
   gradient <0,10,0>
   color_map{  
     [0.1 color DarkGreen]
     [0.2 color DarkBrown]
     [0.8 color White]
   }
   scale 1
  }
}  

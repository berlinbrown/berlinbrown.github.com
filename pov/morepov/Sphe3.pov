#include "colors.inc"

  background { color White }
  
  camera {
    location <-3, 3, -6.4>
    look_at  <0, 0,  0>
  }

#declare chain =
union {
   
  cylinder {
    <-1, 0, 0>,     // Center of one end
    < 1, 0, 0>,     // Center of other end
    0.5            // Radius
    open           // Remove end caps  
    finish { diffuse 0.6, 0.6 brilliance 1.0 }
    texture {
      pigment {color rgbf < 0.0, 0.0, 1.0, .5 >}
     }     
  }
  
  cylinder {
    <-1.2, 0, 0>,     // Center of one end
    < 1.2, 0, 0>,     // Center of other end
    0.42            // Radius
    open           // Remove end caps  
    finish { diffuse 0.6, 0.6 brilliance 1.0 }
    texture {
      pigment {color rgbf < 0.0, 1.0, 0.0, .5>}
     }     
  }                        
}                   

sphere {<0,0,0>, 1 
  finish { diffuse 0.6, 0.6 brilliance 1.0 }
    texture {
      pigment {color rgbf < 0.0, 0.0, 0.8, .5 >}
     } 
     
     translate <0,0,0>    
   }
   
  
   sphere {<0,0,0>, 1 
  finish { diffuse 0.6, 0.6 brilliance 1.0 }
    texture {
      pigment {color rgbf < 1.0, 0.0, 0.0, .5 >}
     } 
     
     translate <1.8,0,0>    
   }


   sphere {<0,0,0>, 0.8 
  finish { diffuse 0.6, 0.6 brilliance 1.0 }
    texture {
      pigment {color rgbf < 1.0, 1.0, 1.0, .5 >}
     } 
     
     translate <-1.8, 0.3,-0.3>    
   }             
   
   #declare my =
   sphere {<1,0.3,1.2>, 1 
  finish { diffuse 0.6, 0.6 brilliance 1.0 }
    texture {
      pigment {color rgbf < 0.0, 0.0, 0.8, .5 >}
     } 
     
     translate <0,0,0>    
   }
   
/*
#declare Rnd_1 = seed (1153);

#local Cntr = 0; // start
 // while loop
 #while ( Cntr <= 6 )

   object{ my
           translate<4*rand(Rnd_1), 2*rand(Rnd_1), 6*rand(Rnd_1) >
         } // end of object

 #local Cntr = Cntr + 1; // next
 #end // -------- end of #while loop
  */

         
/* End with light sources */
  light_source { <2, 4, -3> color White}
  
 light_source {
    <0, 15, -3>
    color White
    spotlight
    radius 15
    falloff 20
    tightness 10
    point_at <0, 0, 0>
  }


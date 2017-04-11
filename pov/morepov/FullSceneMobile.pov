#include "colors.inc"

  background { color White }
  
  camera {
    location <-3.5, 10.5, -18>
    look_at  <1, 0,  0>
  }                                      

  box {
    <-5, 0,   -5>,  // Near lower left corner
    <5,  0.1,  5>   // Far upper right corner
      finish { diffuse 0.6, 0.6 brilliance 1.0 }
      texture {
      pigment {color rgbf < 1.0, 1.0, 1.0, .1 >}
     }     
     translate <0, -3,  0>
  }
   
 #declare phonebox=
  box {
    <-1, -1, -1>,
    < 1,  1,  1>
      finish { diffuse 0.6, 0.6 brilliance 1.0 }
      texture {
      pigment {color rgbf < 0.0, 0.0, 1.0, .1 >}
     }               
  }

#declare phone =
union {    
   object { 
      phonebox 
      scale <0.8, 1.6, 0.5>
    }   
 
 cylinder {
    < 0, 0, 0>,     // Center of one end
    < 0, 1.5, 0>,     // Center of other end
    0.12            // Radius
    open           // Remove end caps  
    finish { diffuse 0.6, 0.6 brilliance 1.0 }
    texture {
      pigment {color rgbf < 0.1, 0.2, 0.8, .5>}
     }     
    translate <0.5, 1.4,  0>
  } 
}

object { phone 
   translate <-4,0,0> }
   
// Connector //
#declare tube =
cylinder {
    < -1.5, 0, 0>,     // Center of one end
    <  2.2, 0, 0>,     // Center of other end
    0.16           // Radius
    open           // Remove end caps  
    finish { diffuse 0.6, 0.6 brilliance 1.0 }
    texture {
      pigment {color rgbf < 0.1, 0.8, 0.1, .5>}
    }         
    translate <-1, 0,  0>
}              
   
object{ tube
           translate<0, 0, 0>
         } // end of object
   
#declare Rnd_1 = seed (1153);


// Add websphere //
box {
    <-1, -1, -1.56>,
    < 1,  3,  1.56>
      finish { diffuse 0.6, 0.6 brilliance 1.0 }
      texture {
      pigment {color rgbf < 0.7, 0.7, 0.7, .1 >}
     }               
    translate <3, 0,  0>     
}

// POL Web Application //
box {
    <-0.6, -0.5, -1.16>,
    < 0.6,  2,  1.16>
      finish { diffuse 0.6, 0.6 brilliance 1.0 }
      texture {
      pigment {color rgbf < 0.9, 0.9, 0.0, .1 >}
     }               
    translate <5, 0,  -3.5>     
}
// Jasper Reports Library
box {
    <-0.6, -0.5, -1.16>,
    < 0.6,  2,  1.16>
      finish { diffuse 0.6, 0.6 brilliance 1.0 }
      texture {
      pigment {color rgbf < 0.1, 0.8, 0.0, .1 >}
     }               
    translate <5.6, 0,  2.5>     
}

// Jasper Reports Report Template and Style Template
box {
    <-0.6, -0.5, -1.16>,
    < 0.6,  2,  1.16>
      finish { diffuse 0.6, 0.6 brilliance 1.0 }
      texture {
      pigment {color rgbf < 0.1, 0.8, 0.2, .1 >}
     }               
    translate <7.6, 0,  2.5>     
}

cylinder {
    <  0, 0, 0>,     // Center of one end
    <  0, 1.5, 0>,     // Center of other end
    0.75           // Radius    
    finish { diffuse 0.6, 0.6 brilliance 1.0 }
    texture {
      pigment {color rgbf < 0.7, 0.2, 0.2, .5>}
    }         
    translate <6, 0,  -7>
}     


#declare tube2 =
 cylinder {
    < -0.3, 0, 0>,     // Center of one end
    <  0.3, 0, 0>,     // Center of other end
    0.10           // Radius
    open           // Remove end caps  
    finish { diffuse 0.6, 0.6 brilliance 1.0 }
    texture {
      pigment {color rgbf < 0.9, 0.1, 0.8, .5>}
    }         
    translate <-1, 0,  -6>
 }     


/*
#local Cntr = 0; // start
 // while loop
 #while ( Cntr <= 6 )
   object{ tube2
           translate<1.2*Cntr, 0, 0>
         } // end of object

 #local Cntr = Cntr + 1; // next
 #end // -------- end of #while loop
  */

/* End with light sources */

 light_source { <1.2, 4, -3> color White}
  
 light_source {
    <0, 15, -3>
    color White
    spotlight
    radius 15
    falloff 20
    tightness 10
    point_at <0, 0, 0>
  }


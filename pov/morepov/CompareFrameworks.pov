#include "colors.inc"

  background { color White }
  
  camera {
    location <3.5, 4.5, -14>
    look_at  <3, 0,  0>
  }                                      

  box {
    <-5, 0,   -5>,  // Near lower left corner
    <5,  0.1,  5>   // Far upper right corner
      finish { diffuse 0.6, 0.6 brilliance 1.0 }
      texture {
      pigment {color rgbf < 1.0, 1.0, 1.0, .1 >}
     }     
     translate <3, -3,  0>
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
    translate <1, 0,  -3.2>     
}
// Jasper Reports Library
box {
    <-0.6, -0.5, -1.16>,
    < 0.6,  2,  1.16>
      finish { diffuse 0.6, 0.6 brilliance 1.0 }
      texture {
      pigment {color rgbf < 0.1, 0.8, 0.0, .1 >}
     }               
    translate <6.1, 0,  2.5>     
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



/* End with light sources */

 light_source { <3.2, 4, -3> color White}
  
 light_source {
    <2, 15, -3>
    color White
    spotlight
    radius 15
    falloff 20
    tightness 10
    point_at <0, 0, 0>
  }


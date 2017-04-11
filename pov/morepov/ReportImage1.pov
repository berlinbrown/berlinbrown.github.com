#include "colors.inc"

  background { color White }
  
  camera {
    location <3, 9, -20>
    look_at  <0, 0,  0>
  }
   box {
    <-7, 0,   -7>,  // Near lower left corner
    <7, 0.5,  7>   // Far upper right corner
      finish { diffuse 0.6, 0.6 brilliance 1.0 }
    texture {
      pigment {color rgbf < 1.0, 1.0, 1.0, .1 >}
     }     
     translate <0, -2,  0>
  }
  
  
 box {
    <-7, 0,   -7>,  // Near lower left corner
    <7, 0.5,  7>   // Far upper right corner
      finish { diffuse 0.6, 0.6 brilliance 1.0 }
    texture {
      pigment {color rgbf < 0.8, 1.0, 1.0, .5 >}
     }     
     translate <-2, -2.7,  3>
  }
  
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


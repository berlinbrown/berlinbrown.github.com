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
      pigment {color rgbf < 0.0, 1.0, 0.0, .5 >}
     }     
  }                        
}                   

object { chain       
   }

object { chain 
     translate x*3
   }
object { chain 
     translate x*-3
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


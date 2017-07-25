//
//  Test.swift
//  FinalTests
//
//  Created by Juan carlos on 11/2/17.
//  Copyright © 2017 Juan carlos. All rights reserved.
//

import Foundation
import UIKit


class Test: NSObject{
    var name : String
    var image : UIImage
    var objetivo : String
    var patientPosition : String
    var clinicPosition : String
    var steps : [String]
    var positivo : [String]
    var evidence : [String]?
    var dor : Double?
    var sensibilidad : Double?
    var especificidad : Double?
    var LRpositive : Double?
    var LRnegative : Double?
    var masInfo : [String]?
   
    
   // override var description: String {
   //  return "El test tiene una sensibilidad del \(String(describing: sensibilidad)) y una especificidad del \(String(describing: especificidad))"
   // }
    
    init(name : String, image : UIImage, objetivo : String, patientPosition : String, clinicPosition : String, steps : [String], positivo : [String], evidence : [String], dor : Double, sensibilidad : Double, especificidad : Double,LRpositive : Double, LRnegative : Double, masInfo : [String] ) {
     self.name = name
     self.image = image
     self.objetivo = objetivo
     self.patientPosition = patientPosition
     self.clinicPosition = clinicPosition
     self.steps = steps
     self.positivo = positivo
     self.evidence = evidence
     self.dor = dor
     self.sensibilidad = sensibilidad
     self.especificidad = especificidad
     self.LRpositive = LRpositive
     self.LRnegative = LRnegative
     self.masInfo = masInfo
 
    
     }
}


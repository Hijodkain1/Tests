//
//  infoViewController.swift
//  FinalTests
//
//  Created by Juan carlos on 9/3/17.
//  Copyright © 2017 Juan carlos. All rights reserved.
//

import UIKit

class infoViewController: UIViewController {

    @IBOutlet var sensDescriptLabel: UILabel!
    
    @IBOutlet var especfDescriptLabel: UILabel!
    
    @IBOutlet var LRpositiveDescriptLabel: UILabel!
    
    @IBOutlet var LRnegativeDescriptLabel: UILabel!
  
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

      sensDescriptLabel.text = "Es la proporción de gente con la alteración que da positivo en el test. Indica la capacidad de un test para detectar pacientes que realmente presentan esa alteración. Un test con alta sensibilidad que de negativo nos sirve para descartar esa patología en concreto.Use un test con alta sensibilidad para evaluar las posibilidades de que tenga esa patologia. Un test sensible que de negativo puede descartar esa patologia."
        especfDescriptLabel.text = "indica la capacidad del test para detectar aquellos pacientess que realmente no tienen la patología. Un test con alta especificidad y resultado positivo nos sirve para detectar la patología. Use un test especifico para confirmar la patologia. Es buena practica usar tests con alta sensibilidad al inicio de la exploracion para ir descartando alteraciones y tests con alta especificidad al final de la exploracion para confirmar la presencia de la alteracion."
        LRpositiveDescriptLabel.text = "es la probabilidad de que la alteracion esté presente cuando el test es positivo"
        LRnegativeDescriptLabel.text = "es la probabilidad de que la alteracion esté presente cuando el test es negativo"


        
        
        

        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

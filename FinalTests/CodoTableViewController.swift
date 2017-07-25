//
//  CodoTableViewController.swift
//  FinalTests
//
//  Created by Juan carlos on 16/2/17.
//  Copyright © 2017 Juan carlos. All rights reserved.
//

import UIKit

class CodoTableViewController: UITableViewController {
   
    var listaTests : [Test] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        var test = Test(name: "Test de Jobe",
                        image : #imageLiteral(resourceName: "Jobeimage"),
                        objetivo : "Rotura o desgarro del supraespinoso",
                        patientPosition : "Con el hombro en abd de 90º y rotación interna",
                        clinicPosition: "Detras del paciente. Toma en 1/3 medio del antebrazo",
                        steps : ["el clínico intenta descender el brazo mientras el paciente opone resistencia"] ,
                        positivo : ["el brazo del paciente no puede mantener la posición"],
                        evidence: ["http://www.ncbi.nlm.nih.gov/pubmed/8872929"],
                        dor : 0.5,
                        sensibilidad : 0.5,
                        especificidad : 0.7,
                        LRpositive : 0.2,
                        LRnegative : 0.8,
                        masInfo: [""]
        )
        listaTests.append(test)
        
        test = Test(name: "Test de Gerber",
                    image : #imageLiteral(resourceName: "gerberImage"),
                    objetivo: "rotura del subescapular",
                    patientPosition: "delante del clínico, con el dorso de la mano en la zona lumbar",
                    clinicPosition : "detras de paciente aguantando la mano separada del raquis lumbar",
                    steps:  ["el clínico suelta la mano del paciente", "mientras él intenta mantenerla separada del cuerpo"],
                    positivo : ["el brazo del paciente no puede mantener la posición"],
                    evidence: ["http://www.ncbi.nlm.nih.gov/pubmed/8872929"],
                    dor : 0.5,
                    sensibilidad: 0.5,
                    especificidad: 0.5,
                    LRpositive : 0.2,
                    LRnegative : 0.8,
                    masInfo: [""]
        )
        
        listaTests.append(test)
        
        test = Test(name: "Test de Jackson",
                    image: #imageLiteral(resourceName: "jacksonImage"),
                    objetivo: "presencia de una hernia cervical",
                    patientPosition: "sentado delante del clínico",
                    clinicPosition: "detras del paciente con ambas manos sobre su cabeza",
                    steps: ["Presionar el apex en sentido caudal",  "Hacerlo con ambas inclinaciones cervicales"] ,
                    positivo : ["el brazo del paciente no puede mantener la posición"],
                    evidence: ["http://www.ncbi.nlm.nih.gov/pubmed/8872929"],
                    dor : 0.5,
                    sensibilidad: 0.5,
                    especificidad: 0.3,
                    LRpositive : 0.2,
                    LRnegative : 0.8,
                    masInfo: [""]
        )
        listaTests.append(test)
        
        test = Test(name: "Test del ligamento Peroneo astragalino anterior",
                    image : #imageLiteral(resourceName: "Jobeimage"),
                    objetivo : "Tensar el ligamento para detectar esguince grado II",
                    patientPosition : "sedestacion larga en la camilla",
                    clinicPosition: "Una mano agarra el calcando,la otra apoya el borde medial sobre el astrágalo rodeándolo",
                    steps : ["EL calcando se inclina a flexiones plantar”, “la mano superior añade más flexión plantar e inversión"],
                    positivo : ["el brazo del paciente no puede mantener la posición"],
                    evidence: ["http://www.ncbi.nlm.nih.gov/pubmed/8872929"],
                    dor : 0.5,
                    sensibilidad : 0.5,
                    especificidad : 0.7,
                    LRpositive : 0.2,
                    LRnegative : 0.8,
                    masInfo: [""]
        )
        listaTests.append(test)

        
    }
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = false
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 3
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        case 2:
            return 2
        default:
            break
        }
        
        return self.listaTests.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let elTestDeLaCelda = listaTests[indexPath.row]
        let cellID = "CodoTestCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! CodoTableViewCell
       
        
        
        switch indexPath.section {
        case 0:
            if indexPath.row == 0 {
                cell.nameLabel.text = elTestDeLaCelda.name
                cell.CodoCellImageView.image = elTestDeLaCelda.image
                cell.objetivoLabel.text = elTestDeLaCelda.objetivo

            }
                   case 1:
                    if indexPath.row == 1 {
                        cell.nameLabel.text = elTestDeLaCelda.name
                        cell.CodoCellImageView.image = elTestDeLaCelda.image
                        cell.objetivoLabel.text = elTestDeLaCelda.objetivo
  
                    }
                  case 2:
                    if indexPath.row == 2  {
                        cell.nameLabel.text = elTestDeLaCelda.name
                        cell.CodoCellImageView.image = elTestDeLaCelda.image
                        cell.objetivoLabel.text = elTestDeLaCelda.objetivo

                    }
                    
                 default:
            break
        }
        
        
        
        
        
        
      /*
        
        
        cell.nameLabel.text = elTestDeLaCelda.name
        /*el text que tiene que tener el nameLabel de la cell tiene que ser el name de elTestDeLaCelda*/
        cell.CodoCellImageView.image = elTestDeLaCelda.image
        cell.objetivoLabel.text = elTestDeLaCelda.objetivo
     */
        if let icc = elTestDeLaCelda.dor {
            cell.iccLabel.text = "\(icc)"
        }else {
            cell.iccLabel.text = "?"
        }
        
        
        if let sensibilidad = elTestDeLaCelda.sensibilidad {
            cell.sensLabel.text = "\(sensibilidad)"
        }else {
            cell.sensLabel.text = "?"
        }
        
        if let especificidad = elTestDeLaCelda.especificidad {
            cell.especfLabel.text = "\(especificidad)"
        }else {
            cell.especfLabel.text = "?"
        }
        if let LRpositivo = elTestDeLaCelda.LRpositive {
            cell.LRpositivoLabel.text = "\(LRpositivo)"
        }else {
            cell.LRpositivoLabel.text = "?"
        }
        
        if let LRnegativo = elTestDeLaCelda.LRnegative {
            cell.LRnegativeLabel.text = "\(LRnegativo)"
            
        }else {
            cell.LRnegativeLabel.text = "?"
        }
        
        
        
        // cell.LRnegativeLabel.text = "\(elTestDeLaCelda.LRnegative)!"
        
        cell.CodoCellImageView.layer.cornerRadius = 40.0 //crea una capa circular de 42 pixels de radio
        cell.CodoCellImageView.clipsToBounds = true// recorta hasta los bordes.
        
       /* COMO SON DATOS OPCIONALES HABRÍA QUE HACER UN IF Y ELSE.
         if let iccData = elTestDeLaCelda.icc {
        switch iccData {
        case 0...0.10:
            cell.iccLabel.backgroundColor = UIColor.green
        case 0.10...0.20:
            cell.iccLabel.backgroundColor = UIColor.blue
        case 0.21 ... 0.50:
            cell.iccLabel.backgroundColor = UIColor.orange
        case 0.51 ... 1.0:
            cell.iccLabel.backgroundColor = UIColor.red
        default:
            break
        } else {
             cell.iccLabel.backgroundColor = UIColor.clear
            }
        } */
        
        switch elTestDeLaCelda.dor! {
        case 0...0.10:
            cell.iccLabel.backgroundColor = UIColor.green
        case 0.10...0.20:
            cell.iccLabel.backgroundColor = UIColor.blue
        case 0.21 ... 0.50:
            cell.iccLabel.backgroundColor = UIColor.orange
        case 0.51 ... 1.0:
            cell.iccLabel.backgroundColor = UIColor.red
        default:
            cell.iccLabel.backgroundColor = UIColor.clear
        }

        switch elTestDeLaCelda.LRpositive! {
        case 10.0...100.0:
            cell.LRpositivoLabel.backgroundColor = UIColor.green
        case 5.0...9.99:
            cell.LRpositivoLabel.backgroundColor = UIColor.blue
        case 2.0 ... 4.99:
            cell.LRpositivoLabel.backgroundColor = UIColor.orange
        case 1.0 ... 1.99:
            cell.LRpositivoLabel.backgroundColor = UIColor.red
        default:
            cell.LRpositivoLabel.backgroundColor = UIColor.clear
        }
        
        switch elTestDeLaCelda.LRnegative! {
        case 0...0.10:
            cell.LRnegativeLabel.backgroundColor = UIColor.green
        case 0.10...0.20:
            cell.LRnegativeLabel.backgroundColor = UIColor.blue
        case 0.21 ... 0.50:
            cell.LRnegativeLabel.backgroundColor = UIColor.orange
        case 0.51 ... 1.0:
            cell.LRnegativeLabel.backgroundColor = UIColor.red
        default:
            cell.LRnegativeLabel.backgroundColor = UIColor.clear
        }
        
        switch elTestDeLaCelda.sensibilidad! {
        case 10.0...100.0:
            cell.sensLabel.backgroundColor = UIColor.green
        case 5.0...9.99:
            cell.sensLabel.backgroundColor = UIColor.blue
        case 2.0 ... 4.9:
            cell.sensLabel.backgroundColor = UIColor.orange
        case 1.0 ... 1.99:
            cell.sensLabel.backgroundColor = UIColor.red
        default:
            cell.sensLabel.backgroundColor = UIColor.clear
        }
        
        switch elTestDeLaCelda.especificidad! {
        case 0...0.10:
            cell.especfLabel.backgroundColor = UIColor.green
        case 0.10...0.20:
            cell.especfLabel.backgroundColor = UIColor.blue
        case 0.21 ... 0.50:
            cell.especfLabel.backgroundColor = UIColor.orange
        case 0.51 ... 1.0:
            cell.especfLabel.backgroundColor = UIColor.red
        default:
            cell.especfLabel.backgroundColor = UIColor.clear
        }


        
        
        
        /*  if elTestDeLaCelda.especificidad! <= 100.0 {
         cell.especfLabel.backgroundColor = UIColor.blue
         }else {
         cell.especfLabel.backgroundColor = UIColor.red
         }*/
        
        
        
        // Esto sirve para cambiar el color de la celda dependiendo del numero que entrega la sensibilidad del test.
        
        /*if elTestDeLaCelda.sensibilidad > 10 && elTestDeLaCelda.sensibilidad < 100 {
         cell.sensLabel.backgroundColor = UIColor.green
         cell.sensLabel.tintColor = UIColor.white
         }*/
        
        /*switch elTestDeLaCelda.sensibilidad {
         case 10.0...100.0:
         
         
         cell.sensLabel.tintColor = UIColor.green
         case 5.0...9.99:
         cell.sensLabel.tintColor = UIColor.blue
         case 2.0 ... 4.9:
         cell.sensLabel.tintColor = UIColor.orange
         case 1.0 ... 1.99:
         cell.sensLabel.tintColor = UIColor.red
         default:
         cell.sensLabel.tintColor = UIColor.clear
         }
         
         switch elTestDeLaCelda.especificidad {
         case O...3:
         cell.especificidad.tintColor = UIColor(colorLiteralRed: <#T##Float#>, green: <#T##Float#>, blue: <#T##Float#>, alpha: <#T##Float#>)
         case 3...5:
         cell.especificidad.tintColor = UIColor(colorLiteralRed: <#T##Float#>, green: <#T##Float#>, blue: <#T##Float#>, alpha: <#T##Float#>)
         
         case 5...10:
         cell.especificidad.tintColor = UIColor(colorLiteralRed: <#T##Float#>, green: <#T##Float#>, blue: <#T##Float#>, alpha: <#T##Float#>)
         
         default:
         cell.especificidad.tintColor = UIColor.clear
         }
         
         
         switch elTestDeLaCelda.LRpositive {
         case O...3:
         cell.tintColor = UIColor.red
         case 3...5:
         cell.tintColor = UIColor(colorLiteralRed: <#T##Float#>, green: <#T##Float#>, blue: <#T##Float#>, alpha: <#T##Float#>)
         
         case 5...10:
         cell.tintColor = UIColor(colorLiteralRed: <#T##Float#>, green: <#T##Float#>, blue: <#T##Float#>, alpha: <#T##Float#>)
         
         default:
         cell.tintColor = UIColor.clear
         }
         
         
         switch elTestDeLaCelda.LRnegative {
         case O...3:
         cell.tintColor = UIColor(colorLiteralRed: <#T##Float#>, green: <#T##Float#>, blue: <#T##Float#>, alpha: <#T##Float#>)
         case 3.0...5.0:
         cell.tintColor = UIColor(colorLiteralRed: <#T##Float#>, green: <#T##Float#>, blue: <#T##Float#>, alpha: <#T##Float#>)
         
         case 5.0...10.0:
         cell.tintColor = UIColor(colorLiteralRed: <#T##Float#>, green: <#T##Float#>, blue: <#T##Float#>, alpha: <#T##Float#>)
         
         default:
         cell.tintColor = UIColor.clear
         }*/
        
        return cell
    }
     // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showCodoDetail"{ //si el segue selecionado es "showTestDetail" entonces..
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                // si puedes recuperar el indexpath  selecionado
                let selectedTest = self.listaTests[indexPath.row]
                // crea una constante con la receta de la celda selecionada.
                let destinationViewController = segue.destination  as! DetailViewController
                // crea un viewController de destino que sea seguro un DetailViewController
                destinationViewController.test = selectedTest
                // el test del viewController de destino sera el test selecionado.
            }
        }
        
        
        
    }
    
     
  
}
    
    
    


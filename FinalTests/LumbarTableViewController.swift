//
//  LumbarTableViewController.swift
//  FinalTests
//
//  Created by Juan carlos on 3/3/17.
//  Copyright © 2017 Juan carlos. All rights reserved.
//

import UIKit

class LumbarTableViewController: UITableViewController {

    var listaTests : [Test] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Lumbar", style: .plain, target: nil, action: nil)
        
        var test = Test(name: "Centralización del dolor ",
                        image : #imageLiteral(resourceName: "centralizacion lumbar"),
                        objetivo : "dolor lumbar discogénico",
                        patientPosition : "en bipedestación",
                        clinicPosition: "Al lado del paciente.",
                        steps : ["se le pide al paciente que haga una extensión lumbar "] ,
                        positivo : ["el dolor irradiado se centraliza"],
                        evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/16474943"],
                        dor : 0 ,
                        sensibilidad : 0.40,
                        especificidad : 0.94,
                        LRpositive : 6.7,
                        LRnegative : 0.43,
                        masInfo: [""]
                        
        )
        listaTests.append(test)
        
        test = Test(name: "Test de Romberg",
                    image : #imageLiteral(resourceName: "romberg"),
            objetivo: "Estenosis espinal lumbar",
            patientPosition: "de pie con pies juntos y ojos cerrados",
            clinicPosition : "enfrente, observando",
            steps:  ["se le pide que mantenga la posición durante 10 seg"],
            positivo : ["realiza movimientos compensatorios para mantener la postura"],
            evidence: ["https://www.ncbi.nlm.nih.gov/pubmed/7575718"],
            dor : 0.0,
            sensibilidad: 39,
            especificidad: 91,
            LRpositive : 4.3,
            LRnegative : 0.39,
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
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listaTests.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let elTestDeLaCelda = listaTests[indexPath.row]
        let cellID = "LumbarTestCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! LumbarTableViewCell
        cell.nameLabel.text = elTestDeLaCelda.name
        /*el text que tiene que tener el nameLabel de la cell tiene que ser el name de elTestDeLaCelda*/
        cell.cellImageView.image = elTestDeLaCelda.image
        cell.objetivoLabel.text = elTestDeLaCelda.objetivo
        
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
            cell.LRpositiveLabel.text = "\(LRpositivo)"
        }else {
            cell.LRpositiveLabel.text = "?"
        }
        
        if let LRnegativo = elTestDeLaCelda.LRnegative {
            cell.LRnegativeLabel.text = "\(LRnegativo)"
            
        }else {
            cell.LRnegativeLabel.text = "?"
        }
        // cell.LRnegativeLabel.text = "\(elTestDeLaCelda.LRnegative)!"
        
        cell.cellImageView.layer.cornerRadius = 40.0 //crea una capa circular de 42 pixels de radio
        cell.cellImageView.clipsToBounds = true// recorta hasta los bordes.
        
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
            cell.LRpositiveLabel.backgroundColor = UIColor.green
        case 5.0...9.99:
            cell.LRpositiveLabel.backgroundColor = UIColor.blue
        case 2.0 ... 4.99:
            cell.LRpositiveLabel.backgroundColor = UIColor.orange
        case 1.0 ... 1.99:
            cell.LRpositiveLabel.backgroundColor = UIColor.red
        default:
            cell.LRpositiveLabel.backgroundColor = UIColor.clear
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
        
        /*elTestDeLaCelda.sensibilidad {
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
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showTestDetail"{ //si el segue selecionado es "showTestDetail" entonces..
            
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

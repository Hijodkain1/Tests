//
//  DetailViewController.swift
//  FinalTests
//
//  Created by Juan carlos on 17/2/17.
//  Copyright © 2017 Juan carlos. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController  {

    @IBOutlet var testImageView: UIImageView!
    
    
    var test : Test!
    
    @IBOutlet var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        
        
        self.testImageView.image = self.test.image
        
       
        self.tableView.backgroundColor = UIColor(colorLiteralRed: 0.9, green: 0.9, blue: 0.9, alpha: 1.0)
        self.tableView.separatorColor = UIColor(colorLiteralRed: 0.9, green: 0.9, blue: 0.9, alpha: 0.75)
        self.tableView.tableFooterView = UIView(frame: CGRect.zero)
        
        //AQUI HACEMOS QUE EL TAMAÑO DE LA CELDA SE AJUSTE AUTOMATICAMENTE AL CONTENIDO.
        self.tableView.estimatedRowHeight = 44.0
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        
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

extension DetailViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        switch section {
        case 0:
            return 1
        case 1:
            return    2
        case 2:
            return self.test.steps.count
        case 3:
            return self.test.positivo.count
        case 4:
            return (self.test.evidence?.count)!
        case 5:
            return 5
        
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestDetailCell", for: indexPath) as! TestDetailViewCell
       
        switch indexPath.section {
        case 0:
            cell.nameLabel.text = "Objetivo"
            cell.valueLabel.text = self.test.objetivo
        
        case 1:
            switch indexPath.row {
           
            case 0:
                cell.nameLabel.text = "Paciente"
                cell.valueLabel.text = self.test.patientPosition
            case 1:
                cell.nameLabel.text = "Clínico"
                cell.valueLabel.text = self.test.clinicPosition
                
            default :
                break
                }
                
        case 2:
                if indexPath.row == 0 {
                    cell.nameLabel.text = "Pasos"
                }else {
                    cell.nameLabel.text = ""
                }
              cell.valueLabel.text = self.test.steps[indexPath.row]
            
        case 3:
                if indexPath.row == 0 {
                    cell.nameLabel.text = "Positivo si"
                }else {
                    cell.nameLabel.text = ""
                }
              cell.valueLabel.text = self.test.positivo[indexPath.row]
            
        case 4:
            if indexPath.row == 0 {
                cell.nameLabel.text = "Enlaces"
            }else {
                cell.nameLabel.text = ""
            }
            cell.valueLabel.text = self.test.evidence?[indexPath.row]
            
        case 5:
            switch indexPath.row {
            
            case 0:
                cell.nameLabel.text = "ICC"
                cell.valueLabel.text = "\(self.test.dor!)"
                
            case 1:
                cell.nameLabel.text = "LR+"
                cell.valueLabel.text = "\(self.test.LRpositive!)"
            case 2:
                cell.nameLabel.text = "LR-"
                cell.valueLabel.text = "\(self.test.LRnegative!)"
            case 3:
                cell.nameLabel.text = "Sens"
                cell.valueLabel.text = "\(self.test.sensibilidad!)"
                
            case 4:
                cell.nameLabel.text = "Especf"
                cell.valueLabel.text = "\(self.test.especificidad!)"
                

            default:
                break
            }

            default:
                break
            }

        
        return cell
        
}
    

            
            
            
            
    
            
          
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var title = ""
        
        
        switch section {
        case 0:
            title = "\(self.test.name)"
      case 1:
           title = "Realización"
       // case 2:
         //   title = "Pasos"
        case 3:
            title = "es positivo?"
        case 4:
            title = "Evidencia"
        case 5:
            title = "datos"
        
        
        default:
            break
            
        }
        
        return title
        
    }


}


extension DetailViewController : UITableViewDelegate {
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 4:
            switch indexPath.row {
            case 0:
                if indexPath.row == 0 {
                if let websiteURL = URL(string: (self.test.evidence?[indexPath.row])!){
                    let app = UIApplication.shared
                    if app.canOpenURL(websiteURL){
                        if #available(iOS 10.0, *) {
                            app.open(websiteURL, options: [:], completionHandler: nil)
                        } else {
                                                                              }
                    }
                }
                }
         //   case 1: //rellenar con otras maneras de visualizar paginas web.
                
        default:
            break
        }
        
        default:
            break

    
        }
      
}
}

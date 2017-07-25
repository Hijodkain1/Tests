//
//  ViewController.swift
//  FinalTests
//
//  Created by Juan carlos on 11/2/17.
//  Copyright © 2017 Juan carlos. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet var imageview: UIImageView!
    @IBOutlet var hombroButton: UIButton!
    @IBOutlet var cervicalButton: UIButton!
    @IBOutlet var codoButton: UIButton!
    @IBOutlet var manoButton: UIButton!
    
    @IBOutlet var lumbarButton: UIButton!
    @IBOutlet var caderaButton: UIButton!
    @IBOutlet var rodillaButton: UIButton!
    @IBOutlet var pieButton: UIButton!
    
    var currentImage = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "Inicio", style: .plain, target: nil, action: nil)
        
        hombroButton.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        cervicalButton.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        codoButton.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        manoButton.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        lumbarButton.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        caderaButton.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        rodillaButton.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)
        pieButton.transform = CGAffineTransform(scaleX: 0.0, y: 0.0)

        func mergeImages(imageToMerge:UIImage){
            
            let size = CGSize(width: imageview.frame.width, height: imageview.frame.height)
            UIGraphicsBeginImageContext(size)
            
            let areaSize = CGRect(x: 0, y: 0, width: imageview.frame.width, height: imageview.frame.height)
            currentImage.draw(in: areaSize)
            //currentImage.draw(areaSize)
            
            imageToMerge.draw(in: areaSize, blendMode: CGBlendMode.normal, alpha: 0.8)
            
            currentImage = UIGraphicsGetImageFromCurrentImageContext()!
            UIGraphicsEndImageContext()
            
            imageview.image = currentImage
        }

       mergeImages(imageToMerge: #imageLiteral(resourceName: "esqueleto") )
        // Do any additional setup after loading the view, typically from a nib.
   /*
       
        */
        
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        UIView.animate(withDuration: 2.0, delay: 0.5, options: [], animations: {
            self.hombroButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: nil)
        UIView.animate(withDuration: 2.0, delay: 0.5, options: [], animations: {
            self.cervicalButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: nil)
        UIView.animate(withDuration: 2.0, delay: 0.5, options: [], animations: {
            self.codoButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: nil)
        UIView.animate(withDuration: 2.0, delay: 0.5, options: [], animations: {
            self.manoButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: nil)
        UIView.animate(withDuration: 2.0, delay: 0.5, options: [], animations: {
            self.lumbarButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: nil)
        UIView.animate(withDuration: 2.0, delay: 0.5, options: [], animations: {
            self.caderaButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: nil)
        UIView.animate(withDuration: 2.0, delay: 0.5, options: [], animations: {
            self.rodillaButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: nil)
        UIView.animate(withDuration: 2.0, delay: 0.5, options: [], animations: {
            self.pieButton.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        }, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


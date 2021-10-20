//
//  ViewController.swift
//  HW2.2
//
//  Created by Tipachel on 20.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var changeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = 65
        yellowLight.layer.cornerRadius = 65
        greenLight.layer.cornerRadius = 65
        
        
    }
    
    @IBAction func changeButtonPressed() {
        
        changeButton.setTitle("NEXT", for: .normal)
        if redLight.alpha < 1 && yellowLight.alpha < 1{
            redLight.alpha = 1
            greenLight.alpha = 0.3
        }else if redLight.alpha == 1{
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        }else if yellowLight.alpha == 1{
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
       
        }
        
        
    }
}


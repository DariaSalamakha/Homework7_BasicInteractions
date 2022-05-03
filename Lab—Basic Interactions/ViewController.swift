//
//  ViewController.swift
//  Lab—Basic Interactions
//
//  Created by Daria Salamakha on 19.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var setButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var swithChangeBack: UISwitch!
    @IBOutlet weak var sliderFontSize: UISlider!
    @IBOutlet weak var labelChangeFontSize: UILabel!
    @IBOutlet var longPressChangeBack: UILongPressGestureRecognizer!
    
    
    @IBAction func setTextButtonTapped(_ sender: UIButton) {
        
        if labelText.text == "" {
            
            labelText.text = "Look at this app!"
            textField.text = "Look at this app!"
            
        } else {
            textField.text = labelText.text
        }
        
    }
    
    @IBAction func clearTextButtonTapped(_ sender: UIButton) {
        labelText.text = ""
        textField.text = ""
    }
    
    @IBAction func switchChangeBackChanged(_ sender: UISwitch) {
        
        if swithChangeBack.isOn {
            view.backgroundColor = .purple
        } else {
            view.backgroundColor = .white
        }
    }
    

    @IBAction func sliderFontSizeChanged(_ sender: UISlider) {
      
        labelChangeFontSize.font =  labelChangeFontSize.font.withSize(CGFloat(sliderFontSize.value))
        
    }
    
    @IBAction func longPreesChangeBackTapped(_ sender: UILongPressGestureRecognizer) {
        
        if longPressChangeBack.state != .ended {
            view.backgroundColor = .red
        } else {
           
            switchChangeBackChanged(swithChangeBack)
        }
    }

}


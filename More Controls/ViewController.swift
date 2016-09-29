//
//  ViewController.swift
//  More Controls
//
//  Created by Tywin Lannister on 29/09/16.
//  Copyright © 2016 Training. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func showAlert(_ sender: UIButton) {
        let myAlert = UIAlertController(title: "My Alert", message: "Some message", preferredStyle: UIAlertControllerStyle.alert)
        let ok = UIAlertAction(title: "ok", style:.default, handler: {( alert : UIAlertAction!) in
                print("ok button was pressed")
        
        })
        myAlert.addAction(ok)
        present(myAlert, animated: true, completion: nil)
        
    }
    
    @IBAction func promptForPassword(_ sender: UIButton) {
        let myAlert = UIAlertController(title: "login", message: "name and password", preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .default) { (alert : UIAlertAction) in
            let name = myAlert.textFields![0]
            let password = myAlert.textFields![1]
            
            print("The user's name is \(name.text) and their password is \(password.text)")
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: {
            (alert : UIAlertAction!) in
                print("Cancel was tapped")
        
        })
        myAlert.addAction(ok)
        myAlert.addAction(cancel)
        
        myAlert.addTextField{
            (textField : UITextField) in
                textField.placeholder = "username"
        }
        
        myAlert.addTextField{
            (textField) in
                textField.placeholder = "password"
                textField.isSecureTextEntry = true
        
        }
        
       
        

            
        
        present(myAlert, animated: true, completion: nil)
    }
    
    @IBAction func showActionSheet(_ sender: UIButton) {
        
        let mySheet = UIAlertController(title: "Action sheet", message: "Please make a selection", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        let option1 = UIAlertAction(title: "Option 1", style: .destructive) {
            (alert)
            in print("Option 1 was tapped")
            
        }
        
        let option2 = UIAlertAction(title: "Option 2", style: .destructive) {
            (alert)
            in print("Option 2 was tapped")
            
        }
        
        let option3 = UIAlertAction(title: "Option 3", style: .destructive) {
            (alert)
            in print("Option 3 was tapped")
            
        }
        
        mySheet.addAction(option1)
        mySheet.addAction(option2)
        mySheet.addAction(option3)
        
        
        
        present(mySheet, animated: true, completion: nil)
    }
    
    
    
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        let myStepper = sender
        let textToDisplay = "Stepper value is : \(Int(myStepper.value))"
        stepperValueLabel.text = textToDisplay
        
    }
    @IBOutlet weak var stepperValueLabel: UILabel!
    
    
    @IBAction func toggleBackground(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            view.backgroundColor = UIColor.groupTableViewBackground
        }
        else {
            view.backgroundColor = UIColor.black
        }
        
        
    }
    @IBAction func switchChanged(_ sender: UISwitch) {
        let mySwitch = sender
        if mySwitch.isOn {
            switchLabel.text = "Switch is ON"
        }
        else {
            switchLabel.text = "Switch is OFF"
        }
        
        
    }
    @IBOutlet weak var switchLabel: UILabel!
   
    
    
    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        let mySlider = sender
        let textToDisplay = "Slider value is: \(Int(mySlider.value))"
        sliderLabel.text = textToDisplay
    }
    
    

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var mobileField: UITextField!
    
    
    
    @IBAction func textFieldDoneEditing(_ sender: UITextField) {
        sender.resignFirstResponder()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


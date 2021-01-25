//
//  ViewController.swift.
//  Is It Prime
//
//  Created by Alan Mendez on 1/21/21.
//  
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func numberEntered(_ sender: Any) {
        
        if let userEnteredNumber = numberTextField.text {
            
            let userInteger = Int(userEnteredNumber)
            if let number = userInteger {
                
                var isPrime = true
                
                if number == 1 {
                    //number is not prime
                    isPrime = false
                }
                
                var i = 2
                while i < number {
                    if number % i == 0 {
                        isPrime = false
                        }
                    i += 1
                    }
                if isPrime == true {
                    numberLabel.text = "\(number) is prime!"
                } else{
                    numberLabel.text = "\(number) is not prime."
                }
                
        }
        else {
            numberLabel.text = "Please enter a positive whole number."
        }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //make keyboard disappear when elsewhere on the screen is pressed
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    //make keyboard disappear when return button is pressed
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}


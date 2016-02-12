//
//  ViewController.swift
//  Is It Prime
//
//  Created by Dhruv Upadhyay on 9/27/15.
//  Copyright © 2015 Dhruv Upadhyay. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var result: UILabel!
    @IBOutlet var textField: UITextField!
    @IBAction func prime(sender: AnyObject) {
        
        let myGuess = Int(textField.text!)
        
        var isPrime = true
        
        if myGuess == nil {
            
            
            result.text = "Please enter a whole number!"
            
        } else if myGuess == 1 {
            
          isPrime = true
        }
        else if myGuess == 0 {
    
       
            result.text = "Please enter a number greater than 0!"

        } else {
            
            for (var i = 2; i < myGuess; i++) {
                
                if (myGuess! % i == 0) {
          
                    
                    isPrime = false
                }
                
            }
            
        }
        
        
        if isPrime == true {
            result.text = "\(myGuess!) is prime!"
            
        } else if isPrime == false {
            result.text = "\(myGuess!) is NOT prime!"

        }
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       self.view.endEditing(true)
    
    }
    
  
}


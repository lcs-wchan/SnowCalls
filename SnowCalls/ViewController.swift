//
//  ViewController.swift
//  SnowCalls
//
//  Created by William Chan on 2019-11-28.
//  Copyright © 2019 WilliamChan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    //MARK: propertites
    @IBOutlet weak var messageInput: UITextView!
    @IBOutlet weak var messageOutput: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //clear output and input textview
        messageOutput.text = ""
        messageInput.text = ""
        
        //  //Give the focus to the input textview when the program begins, set focus on input field
        messageInput.becomeFirstResponder()
    }
    
    
    @IBAction func convert(_ sender: Any) {
        
        
        
        //INPUT
        
        //guard statement
        guard let message = messageInput.text, message.count > 0 else{
            messageOutput.text = "Please enter phone number to convert."
            return
        }
        
        //PROCESS
        
        
        //seperate rows of string into one string
        let numbers = message.split(separator: "\n")
        
        // Loop over each number given
        for number in numbers {
            
            var output = ""
            
            // Loop over each character
            for character in number {
                print(output)
                
                // elimate the caracter over 12
                if output.count < 12 {
                    //loop for each character from one string
                    
                    
                    switch character {
                    case "A","B","C","2":
                        output += "2"
                    case "D","E","F","3":
                        output += "3"
                    case "G","H","I","4":
                        output += "4"
                    case "J","K","L","5":
                        output += "5"
                    case "M","N","O","6":
                        output += "6"
                    case "P","Q","R","S","7":
                        output += "7"
                    case "T","U","V","8":
                        output += "8"
                    case "W","X","Y","Z","9":
                        output += "9"
                    default:
                        output += String(character)
                    }
                    
                    
                }
                
                
                
                
                //add a dash after 3 and 7 character
                if output.count == 3 || output.count == 7{
                    output += "-"
                }
                
                
            }
            
        }
        
        
        
        
        //MARK: UITextViewDelegate Methods
        
        //Called automatically when the contents of the text view are changed
        func textViewDidChange(_ textView: UITextView) {
            // reset the output text view
            messageOutput.text = ""
            
            
            
        }
        
    }
}

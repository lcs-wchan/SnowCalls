//
//  ViewController.swift
//  SnowCalls
//
//  Created by William Chan on 2019-11-28.
//  Copyright © 2019 WilliamChan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: propertites
    @IBOutlet weak var messageInput: UITextView!
    @IBOutlet weak var messageOutput: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func convert(_ sender: Any) {
        
    
        //INPUT
        
        //guard statement
        guard let message = messageInput.text, message.count>0 else{
            messageOutput.text = "Please enter phone number to convert."
            return
        }
        //PROCESS & OUTPUT
        var output = ""
        for character in message {
            switch character {
            case "1":
                output += "1"
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
            case "0":
                output += "0"
            default:
                output += "-"
            }
        }
        
        
        
        
        
    }
    
}

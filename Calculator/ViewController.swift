//
//  ViewController.swift
//  Calculator
//
//  Created by test on 8/13/17.
//  Copyright © 2017 Meheboob Nadaf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var result : Float = 0.0
    
    var currentOperation : Int = 0
    
    var currentNumber : Float = 0.0
    
    
    
    @IBOutlet weak var display: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    @IBAction func buttonPressed(_ sender: RoundButton) {
        
        currentNumber = currentNumber * 10 + (Float)(sender.tag)
        
        self.display.text = String(format: "%.1f", currentNumber)
        
        
    }
    
    
    @IBAction func operationPressed(_ sender: RoundButton) {
        
        
        if currentOperation == 0 {
            result = currentNumber
        }
        else{
            
            
            switch currentOperation {
                
            case 50:
                result = result + currentNumber
                break
                
            case 25:
                result = result - currentNumber
                break
                
            case 75:
                result = result / currentNumber
                break
                
            case 100:
                result = result * currentNumber
                break
                
            case 125:
                self.display.text = String(format : "%.1f",result)
                break
                
            default:
                
                currentOperation = 0
                break
                
                
            }
        }
        
        
        currentNumber = 0
        self.display.text = String(format : "%.1f",result)
        if sender.tag == 0 {
            result = 0
            
            
            
        }
        currentOperation = sender.tag
    }
    @IBAction func clearPressed(_ sender: Any) {
        
        currentNumber = 0
        currentOperation = 0
        self.display.text = String("0")
        
    }
}


//
//  ViewController.swift
//  csit242LabWeek11
//
//  Created by Fidel Lim on 12/4/19.
//  Copyright © 2019 Fidel Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Declaring variables
    var currentNumber:Double = 0;
    var previousNumber:Double = 0;
    var operation:Int = 0;
    var performingMath = false
    
    //declare CalculatorModel class
    var calc = CalculatorModel()

    //label variable
    @IBOutlet weak var myLabel: UILabel!
    
    //Function for pressing multiple numbers
    @IBAction func numbers(_ sender: UIButton) {
        
        if performingMath == true{
            myLabel.text = String(sender.tag-1);
            currentNumber = Double(myLabel.text!)!;
            performingMath = false;
        } else {
            if myLabel.text == "0" || myLabel.text == "0.0" {
                myLabel.text = String(sender.tag-1);
            } else {
                myLabel.text = myLabel.text! + String(sender.tag-1);
                currentNumber = Double(myLabel.text!)!
            }
           
        }
        
    }
    
    @IBAction func operations(_ sender: UIButton) {
        
        if sender.tag == 11{ //cancel
            myLabel.text = "0";
            previousNumber = 0;
            currentNumber = 0;
            operation = 0;
        }
        else if sender.tag != 11 && sender.tag != 16 {
            previousNumber = Double(myLabel.text!)!
            
            if sender.tag == 12{ //addition
                myLabel.text = "";
            }
            else if sender.tag == 13{ //subtraction
                myLabel.text = ""
            }
            else if sender.tag == 14{ //multiplication
                myLabel.text = ""
            }
            else if sender.tag == 15{ //division
                myLabel.text = ""
            }
            
            operation = sender.tag;
            performingMath = true;
        }
        else if sender.tag == 16{ //equals
            
            var outputValue:Double = 0.0;
            
            if operation == 12 {
                
                outputValue = calc.add(previousNumber: previousNumber, currentNumber: currentNumber)
                
            }else if operation == 13{
                
                outputValue = calc.subtract(previousNumber: previousNumber, currentNumber: currentNumber)
                
            }else if operation == 14{
                
                outputValue = calc.multiply(previousNumber: previousNumber, currentNumber: currentNumber)
                
            }else if operation == 15{
                
                outputValue = calc.divide(previousNumber: previousNumber, currentNumber: currentNumber)
                
            }
            
            //If value is not decimal convert to int
            //else set decimal to two places
            if (outputValue.truncatingRemainder(dividingBy: 1) == 0) {
                
                myLabel.text = String(Int(outputValue))
                
            }else{
                
                myLabel.text = String(format: "%.2f" , outputValue)
                
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   
}


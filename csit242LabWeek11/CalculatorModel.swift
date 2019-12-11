//
//  CalculatorModel.swift
//  csit242LabWeek11
//
//  Created by Fidel Lim on 12/9/19.
//  Copyright © 2019 Fidel Lim. All rights reserved.
//

import UIKit

class CalculatorModel: CalculatorProtocol{

    //protocols to be implemented
    func add(previousNumber:Double, currentNumber:Double) -> Double {
        return previousNumber + currentNumber
    }
    func subtract(previousNumber:Double, currentNumber:Double) -> Double {
        return previousNumber - currentNumber
    }
    func divide(previousNumber:Double, currentNumber:Double) -> Double{
        return previousNumber / currentNumber
    }
    func multiply(previousNumber:Double, currentNumber:Double) -> Double{
        return previousNumber * currentNumber
    }
    
}

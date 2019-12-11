//
//  CalculatorProtocol.swift
//  csit242LabWeek11
//
//  Created by Fidel Lim on 12/9/19.
//  Copyright © 2019 Fidel Lim. All rights reserved.
//

import UIKit


protocol CalculatorProtocol {

    //protocols
    func add(previousNumber:Double, currentNumber:Double) -> Double
    func subtract(previousNumber:Double, currentNumber:Double) -> Double
    func divide(previousNumber:Double, currentNumber:Double) -> Double
    func multiply(previousNumber:Double, currentNumber:Double) -> Double
    
}

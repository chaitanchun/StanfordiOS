//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Tristan Chai on 4/4/15.
//  Copyright (c) 2015 Tristan Chai. All rights reserved.
//

import Foundation

class CalculatorBrain
{
    enum Op {
        case Operand(Double)
        case UnaryOperation(String, Double -> Double)
        case BinaryOperation(String, (Double, Double) -> Double)
    }
    var opStack  = [Op]()
    
    var knownOps = Dictionary<String, Op>()
    
    func pushOperand(operand: Double) {
        opStack.append(Op.Operand(operand))
    }
    
    func performOperation(symbol: String) {
        
    }
    
    
}

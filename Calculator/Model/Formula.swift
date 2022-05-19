//
//  Formula.swift
//  Calculator
//
//  Created by NAMU on 2022/05/19.
//

import UIKit

struct Formula {
    var operands = CalculatorItemQueue<Double>()
    var operators =  CalculatorItemQueue<Character>()
    
    mutating func result() throws -> Double {
        var result = operands.dequeue() ?? 0.0
        while !operators.isEmpty() {
                result = Operator.init(rawValue: operators.dequeue()!)?.calculate(lhs: result, rhs: operands.dequeue() ?? 0.0) ?? 0.0
        }
        return result
    }
}

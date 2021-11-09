//
//  CalculatorItem.swift
//  Calculator
//
//  Created by Seul Mac on 2021/11/09.
//

import Foundation

protocol CalculateItem {
    
}

struct CalculatorItemQueue<Element>: CalculateItem {

    var inbox: [Element] = []
    var outbox: [Element] = []
    
    mutating func enqueue(_ item: Element) {
        inbox.append(item)
    }
    
    mutating func dequeue() -> Element? {
        if inbox.isEmpty && outbox.isEmpty {
            return nil
        }
        if outbox.isEmpty {
            outbox = inbox.reversed()
            inbox.removeAll()
        }
        return outbox.removeLast()
    }
    
}

//
//  List.swift
//  Calculator
//
//  Created by 이승재 on 2021/11/09.
//

import Foundation

class Node<Element> {
    var data: Element?
    var next: Node?
    
    init(data: Element?, next: Node? = nil) {
        self.data = data
        self.next = next
    }
}

struct LinkedList<Element> {
    var head: Node<Element>?
    var tail: Node<Element>?
    init() {}
    var isEmpty: Bool {
        return head == nil
    }
    
    mutating func append(_ data: Element?) {
        if isEmpty {
            head = Node(data: data)
            tail = head
            return
        }
        
        tail?.next = Node(data: data)
        tail = tail?.next
    }
    
    mutating func pop() -> Element? {
        if isEmpty {
            return nil
        }
        guard let result: Node = head else { return nil }
        head = head?.next
        if isEmpty {
            tail = nil
        }
        return result.data
    }
    
    mutating func removeLast() -> Element? {
        guard let head = head else {
            return nil
        }
        if head.next == nil {
            return pop()
        }
        
        var previousNode = head
        var currrentNode = head
        
        while let next = currrentNode.next {
            previousNode = currrentNode
            currrentNode = next
        }
        previousNode.next = nil
        tail = previousNode

        return currrentNode.data
    }
}

extension Node: CustomStringConvertible {
    var description: String {
        guard let data = data else {
            return ""
        }
        guard let next = next else {
            return "\(data)"
        }
        return "\(data)" + ", " + "\(next)"
    }
}

extension LinkedList: CustomStringConvertible {
    var description: String {
        guard let head = head else {
            return "Queue is Empty"
        }
        return "[" + "\(head)" + "]"
    }
}
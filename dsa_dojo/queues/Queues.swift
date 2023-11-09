//
//  Queues.swift
//  dsa_dojo
//
//  Created by Taylor Pubins on 11/8/23.
//

import Foundation

struct Queue {
    var queue: [Any] = []
    
    mutating func enqueue(d: Any) {
        queue.append(d as Any)
    }
    
    mutating func dequeue() -> Any? {
        return self.empty() ? nil : queue.removeFirst()
    }
    
    func empty() -> Bool {
        return queue.isEmpty ? true : false
    }
    
    func count() -> Int {
        return queue.count
    }
    
    func peek() -> Any? {
        if !empty() {
            return queue[0]
        } else {
            return nil
        }
    }
    
    func last() -> Any? {
        if !empty() {
            return queue[count() - 1]
        } else {
            return nil
        }
    }
}

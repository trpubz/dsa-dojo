//
//  PriorityQueue.swift
//  dsa_dojo
//
//  Created by Taylor Pubins on 11/9/23.
//

import Foundation

struct PriorityQueue {
    var queue: [Plane] = []
    
    mutating func enqueue(idx: Int, p: Plane) {
        queue.append(p)
    }
    
    mutating func dequeue() -> Plane? {
        return self.empty() ? nil : queue.removeFirst()
    }
    
    func empty() -> Bool {
        return queue.isEmpty ? true : false
    }
    
    func count() -> Int {
        return queue.count
    }
    
    func peek() -> Plane? {
        if !empty() {
            return queue[0]
        } else {
            return nil
        }
    }
}

struct Plane {
    let name: String
    let expectedDeparture: Int
    let expectedArrival: Int
}

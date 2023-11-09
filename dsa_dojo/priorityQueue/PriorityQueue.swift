//
//  PriorityQueue.swift
//  dsa_dojo
//
//  Created by Taylor Pubins on 11/9/23.
//

import Foundation

struct PriorityQueue {
    var queue: [Int:[Plane]] = [:]
    
    mutating func enqueue(priority: Int, p: Plane) {
        queue[priority, default: Array()].append(p)
    }
    
    mutating func next() -> Plane? {
        for (pri, plane) in queue {
            print(pri)
        }
        return nil
    }
    
    func empty() -> Bool {
        return queue.values.isEmpty
    }
    
    func count() -> Int {
        return queue.count
    }
    
//    func peek() -> Plane? {
//        if !empty() {
//            return queue[0]
//        } else {
//            return nil
//        }
//    }
    
    func status() -> [Int:Int] {
        return queue.mapValues({$0.count})
    }
}

struct Plane: Equatable {
    let name: String
    let expectedDeparture: Int
    let expectedArrival: Int
}

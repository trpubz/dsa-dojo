//
//  Stacks.swift
//  dsa_dojo
//
//  Created by Taylor Pubins on 11/7/23.
//

import Foundation

struct Stacks {
    
    static func validate(d: String) -> Bool {
        var stack: [Character] = []
        
        for char in d {
            if char == "(" || char == "[" || char == "{" {
                stack.append(char)
            } else {
                if char == ")" && stack.last == "(" {
                    stack.removeLast()
                } else if char == "]" && stack.last == "[" {
                    stack.removeLast()
                } else if char == "}" && stack.last == "{" {
                    stack.removeLast()
                } else {
                    return false
                }
            }
        }
        
        if stack.isEmpty {
            return true
        } else {
            return false
        }
    }
}

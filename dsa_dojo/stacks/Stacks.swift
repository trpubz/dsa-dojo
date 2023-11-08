
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
            // chars not '(' or '[' or '{' get ignored
            if char == "(" || char == "[" || char == "{" {
                stack.append(char)
            } else if char == ")" || char == "]" || char == "}" {
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
    
    static func validateHTML(d: String) -> Bool {
        var stack: [String] = []
        var tagIsOpen: Bool = false
        var tag: String = ""
        
        for char in d {
            if !tagIsOpen {
                if char == "<" {
//                    tag.append(char)
                    tagIsOpen = true
                }
            } else {  // tag is open
                if char != ">" {  // not end of tag yet
                    if char == " " {
                        stack.append(tag)
                        tag = ""
                        tagIsOpen = false
                        continue
                    }
                    tag.append(char)
                } else {  // char == '>' a.k.a. end of tag
                    // evaluate for match if tag contains '/'
                    if tag.contains("/") {  // closing tag
                        guard let openTag = stack.popLast() else {
                            return false
                        }
                        if openTag != tag.dropFirst() {
                            return false
                        }
                    } else {  // not a closing tag
                        stack.append(tag)
                    }
                    tag = ""
                    tagIsOpen = false
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

//
//  SpaceDeli.swift
//  SpaceDeli
//
//  Created by Jim Campagno on 1/4/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import Foundation

class SpaceDeli {
    
    var line: [String] = []
    
    
    
    // Question #1
 
    func description() -> String {
        
        var lineSentence = "The line is:"
        
        for (index, person) in line.enumerated() {
            
            lineSentence += "\n\(index + 1). \(person)"
            
        }
        
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            return lineSentence
        }
    }
    
    
    
    // Question #2

    func add(name: String) -> String {
        
        line.append(name)
        var lastPerson: String = ""
        
        if name == line[0] {
            return "Welcome \(name). You're first in line!"
        }
        
        for (index, person) in line.enumerated() {
            
            if person == name {
                lastPerson = "Welcome \(person). You're number \(index + 1) in line."
            }
        }
        return lastPerson
    }
    
    
    
    
    // Question #3

    func serveNextCustomer() -> String {
    
        if !line.isEmpty {
            let index = 0
            let nextInLine = "\(line[index]) is ready to be served, please come forward."
            line.remove(at: index)
            return nextInLine
        } else {
            return "The line is empty."
        }
    }
    
    
    
}

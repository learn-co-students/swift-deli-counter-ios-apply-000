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
 
    func description () -> String {
        if line.isEmpty {
            
            return "The line is currently empty."
            
        } else {
            
            return "The line is:\n1. \(line[0])\n2. \(line[1])\n3. \(line[2])"
        }
        
    }
    
    // Question #2

    func add(name: String) -> String {
       line.append(name)
        
        var message = "Welcome \(name). "
        message += line.count == 1 ? "You're first in line!" : "You're number \(line.count) in line."
        return message
    }
    
    
    
    
    // Question #3

    func serveNextCustomer() -> String {
        guard !line.isEmpty else { return "The line is empty." }
        let next = line.removeFirst()
        return "\(next) is ready to be served, please come forward."
    }

    
    
    
}


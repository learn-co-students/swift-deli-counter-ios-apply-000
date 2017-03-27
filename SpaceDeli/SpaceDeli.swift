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
        if line.count == 0 {
            return "The line is currently empty."
        }
        else {
            var lineStatus = "The line is:"
            for (index, person) in line.enumerated() {
                lineStatus += "\n\(index + 1). \(person)"
            }
            return lineStatus
        }
    }
    
    
    
    
    
    // Question #2
    func add(name: String) ->String {
       line.append("\name")
        if line.count == 1 {
            return "Welcome \(name). You're first in line!"
        }
        else {
            return "Welcome \(name). You're number \(line.count) in line."
        }
    }
    
    
    
    
    
    // Question #3
    func serveNextCustomer() -> String {
        if line.count == 0 {
            return "The line is empty."
        }
        else {
            var firstCustomer = line[0]
            var result = "\(firstCustomer) is ready to be served, please come forward."
            line.remove(at: 0)
             return result
        }
     
    }
    
    
    
}

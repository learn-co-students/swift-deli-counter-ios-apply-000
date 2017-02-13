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
        
        
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            
            var lineOutput = "The line is:"
            
            for (index, lineResident) in line.enumerated() {
                
                lineOutput = lineOutput + "\n\(index + 1). \(lineResident)"
            
            }
            return lineOutput
        }
    }

    

    
    // Question #2

    func add(name: String) -> String {
        if line.isEmpty {
        line.append(name)
            return "Welcome \(name). You're first in line!"

        } else {
            line.append(name)
            return "Welcome \(name). You're number \(line.count) in line."
        }
    }
    
    
    
    
    
    
    // Question #3

    
    func serveNextCustomer() -> String {
        if line.isEmpty {
            return "The line is empty."
        } else {
            let str = line.remove(at: 0)
            
            line.remove(at: 0)
            
            return "\(str) is ready to be served, please come forward."
            
        }
    }
}

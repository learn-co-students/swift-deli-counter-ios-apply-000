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
        
        if line.isEmpty { return "The line is currently empty." }
            
        var output = "The line is:"
        
        for (count, name) in line.enumerated() {
            output += "\n\(count + 1). \(name)"
        }
        
        return output
        
    }
    
    
    
    // Question #2

    func add (name: String) -> String {
        
        if line.isEmpty {
            line.append(name)
            return "Welcome \(name). You're first in line!"
        }
        
        let position = line.count + 1
        
        line.append(name)
        
        return "Welcome \(name). You're number \(position) in line."
    }
    
    
    
    
    // Question #3

    func serveNextCustomer () -> String {
        
        if line.isEmpty { return "The line is empty." }
        
        let name = line [0]
        
        line.remove( at: 0 )
        
        return "\(name) is ready to be served, please come forward."
        
    }
    
    
    
}

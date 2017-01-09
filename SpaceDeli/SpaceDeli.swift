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
    
    
    
    func description() -> String {
        
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            
            var lines = ""
            
            for (index, item) in line.enumerated() {
                
                let newLine = "\n\(index + 1). \(item)"
                
                lines.append(newLine)
            }
            
            return "The line is:" + lines
        }
        
    }
    
    
    
    
    
    func add(name:String) -> String {
        
        line.append(name)
        
        if line.count == 1 {
            return "Welcome \(name). You're first in line!"
        } else {
            return "Welcome \(name). You're number \(line.count) in line."
        }
    }

    
    
    
    
    
func serveNextCustomer() -> String {
    
    if line.isEmpty {
        return "The line is empty."
    } else {
        let name = line.remove(at: 0)
        return "\(name) is ready to be served, please come forward."
    }
}
    
    
    
    
}

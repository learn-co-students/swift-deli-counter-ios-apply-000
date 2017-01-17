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
    func description() -> String{
        
        var lineStr: String = ""
        
        if line.isEmpty != true {
            lineStr = "The line is:"
            
            for (index, person) in line.enumerated() {
                let linePos = index + 1
                lineStr = lineStr + "\n\(linePos). \(person)"
            }
            
        } else {
            lineStr = "The line is currently empty."
        }
        
        return lineStr
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
            let serving = line[0]
            line.remove(at: 0)
            return "\(serving) is ready to be served, please come forward."
        }
    }
    
    
    
    
}

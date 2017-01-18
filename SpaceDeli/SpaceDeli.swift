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
        }
        
        var res = "The line is:"
        for (i, member) in line.enumerated() {
            res.append("\n\(i+1). \(member)")
        }
        return res
    }
    
    
    
    
    
    // Question #2
    func add(name: String) -> String {
        line.append(name)
        if line.count == 1 {
            return "Welcome \(name). You're first in line!"
        }
        return "Welcome \(name). You're number \(line.count) in line."
    }

    
    
    
    
    
    // Question #3
    func serveNextCustomer() -> String {
        if line.isEmpty {
            return "The line is empty."
        }
        return "\(line.remove(at: 0)) is ready to be served, please come forward."
    }
    
    
    
    
}

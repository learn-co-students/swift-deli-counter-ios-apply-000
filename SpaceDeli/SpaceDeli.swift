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
        if !line.isEmpty {
            var lineDescribe = "The line is:"
            for (index, person) in line.enumerated() {
                lineDescribe += "\n\(index + 1). \(person)"
            }
            return lineDescribe
        } else {
            return "The line is currently empty."
        }
    }
    
    
    
    // Question #2
    func add(name: String) -> String {
        line.append(name)
        if line.count == 1 {
            return "Welcome \(name). You're first in line!"
        } else {
            let count = (line.count)
            return "Welcome \(name). You're number \(count) in line."
        }
    }
    
    
    
    
    
    // Question #3
    func serveNextCustomer() -> String {
        if line.isEmpty {
            return "The line is empty."
        } else {
            let next = line[0]
            line.remove(at: 0)
            return "\(next) is ready to be served, please come forward."
        }
    }
    
    
    
}

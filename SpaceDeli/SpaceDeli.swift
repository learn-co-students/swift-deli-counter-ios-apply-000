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
        }
       
        var order = "The line is:"
        for (index, place) in line.enumerated() {
            order.append("\n\(index + 1). \(place)")
        }
        return order
        
    }

    
   

    
    
    func add(name: String) -> String {
 
        line.append(name)
        
        if name == line[0] {
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
            return ("\(name) is ready to be served, please come forward.")
        }
        
    }
    
    

    
    
    
    
}

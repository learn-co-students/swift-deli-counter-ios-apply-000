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
    var name: String = ""
    
    
    // Question #1
    func description() -> String
    {
        
        if line.isEmpty {
            return "The line is currently empty."
        }
        else {
            var retval = "The line is:"
            for (index, people) in line.enumerated() {
                retval = retval + "\n\(index + 1). \(people)"
            }
            return retval
        }
    }
    
    
    // Question #2
    
    func add(name: String) -> String {
        
        line.append(name)
        
        if name == line[0] {
            return "Welcome \(name). You're first in line!"
        }
            
        else {
            
            var retvaltwo = "Welcome \(name)."
            
            let nextIndex = (line.count);
            retvaltwo = retvaltwo + " You're number \(nextIndex) in line."
            return retvaltwo
            
        }
        
    }
    
    
    // Question #3
    
    func serveNextCustomer() -> String {
        
        let Count = line.count
        if Count == 0 {
            return "The line is empty." }
            
        else {
            
            let nextCustomer: String = line[0]
            let result = "\(nextCustomer) is ready to be served, please come forward."
            line.remove(at: 0)
            return result
        }
    }
}

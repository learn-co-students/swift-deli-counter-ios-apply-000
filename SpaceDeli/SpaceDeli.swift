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
    
    
    func description() -> String
    {
        if line.isEmpty {
            
            return "The line is currently empty."
        }
        else{
            var str = "The line is:"
            
            for (index, step) in line.enumerated() {
                str = str + "\n\(index + 1). \(step)"
            }
            
            return str
        }
        
    }
    
    
    func add(name: String) -> String
    {
        
        
        if line.isEmpty {
            line.append(name)
            return "Welcome \(name). You're first in line!"
        } else {
            line.append(name)
            return "Welcome \(name). You're number \(line.count) in line."
        }
        
       
    }
    

    func serveNextCustomer() -> String
    {
        if line.isEmpty {
            return "The line is empty."
        } else {
            let str = line.remove(at: 0)

            line.remove(at: 0)

               return "\(str) is ready to be served, please come forward."
     

        
        
        }
    }
    
    
    
}

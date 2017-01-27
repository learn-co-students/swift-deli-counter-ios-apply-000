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
        
        print("The line is:")
        
        var i = 0
        
        if line.count != 0 {
            
            for name in line{
                
                print("\(i). \(name)")
                i = i+1
            }
            
        }
        
        else {
            
            
           return "The line is currently empty."
            
            
        }
        
        
        return ""
    }
    
    
    
    // Question #2

    func add(name: String) -> String{
        
        if line.count == 0 {
            line.append(name)
            return "Welcome \(name). You're first in line!"
        }
        
        line.append(name)
        
        var counter = line.count

        
        return "Welcome \(name). You're number \(counter) in line."
        
    }
    

    
    // Question #3

    func serveNextCustomer() -> String{
        
        if line.count == 0 {
            
            return "The line is empty."
        }
        
        else{
            
            return "\(line[0]) is ready to be served, please come forward."
        }
        
        
        
        
    }
    
    
    
    
    
    
}

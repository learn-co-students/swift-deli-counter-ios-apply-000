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
        
        var answer = "The line is"
        
        if line.count > 0{
            
            answer = answer + ": "
            
            var counter = 0
            for (index, item) in line.enumerated(){
                
                counter += 1
                answer = answer + String(index + 1) + ". \(item)"
                
            }
            
        }
        print(answer)
        return answer
        
    }
    
    
    
    // Question #2
    
    func add(name: String) -> String{
    
        var answer = ""
        
        line.append(name)
        
        for (index, item) in line.enumerated(){
        
            if item == line[index]{
            
                if index == 0{
                
                    answer = "Welcome \(item). You're first in line!"
                }else{
                
                    answer = "Welcome \(item). You're number \(index + 1) in line."
                }
            }
        }
        
        return answer
    }
    
    // Question #3

    func serveNextCustomer() -> String{
    
        var answer = ""
        
        if line.count > 0{
            
            answer = "\(line[0]) is ready to be served, please come forward."
        
        }else{
        
            answer = "The line is empty."
        }
        
        return answer
    }
    
}

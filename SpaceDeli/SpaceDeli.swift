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
 
    func description()->String{
        
        if line.isEmpty{
            return "The line is currently empty."
        }else{
        
            var str:String = "The line is:\n"
            for (index,li) in line.enumerated(){
                if((index+1) == line.count ){
                    str = "\(str)\(index+1). \(li)"
                }else{
                    str = "\(str)\(index+1). \(li)\n"
                }
            
            }
            
            return str
        }
        
    }
    
    
    // Question #2

    func add(name:String)->String{
        
        if line.isEmpty {
            line.append(name)
            return "Welcome \(name). You're first in line!"
        }else{
            line.append(name)
            return "Welcome \(name). You're number \(line.count) in line."
        }
    }
    
    
    
    
    // Question #3

    func serveNextCustomer()->String{
        if line.isEmpty{
            return "The line is empty."
        }else{
            var str =  "\(line[0]) is ready to be served, please come forward."
            line.remove(at: 0)
            return str
        }
    }
    
    
    
}

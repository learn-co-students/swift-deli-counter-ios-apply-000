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
        if(!line.isEmpty){
            var lineDescription = String()
            lineDescription.append("The line is:")
            for (index, value) in line.enumerated() {
                lineDescription.append("\n\(index + 1). \(value)")
            }
            return lineDescription
        }
        return "The line is currently empty."
    }
    
    func add(name: String) -> String {
        var welcomeMsg = "Welcome \(name). "
        line.append(name)
        let posInLine = line.count
        if(posInLine == 1){
            welcomeMsg += "You're first in line!"
        }
        else {
            welcomeMsg += "You're number \(posInLine) in line."
        }
        return welcomeMsg
    }
    
    func serveNextCustomer() -> String {
        if(line.isEmpty){
            return "The line is empty."
        }
        
        let nextCustomer = line.remove(at: 0)
        return "\(nextCustomer) is ready to be served, please come forward."
    }
    
    
    
}

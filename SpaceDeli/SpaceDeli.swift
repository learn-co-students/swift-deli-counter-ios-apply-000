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
        
        var names: String = ""
        let ammountOfPeople = line.count - 1
        
        if line.isEmpty {
            names = "The line is currently empty."
            return names
        }
        names = "The line is:\n"
        for (index,people) in line.enumerated() {
            if index == ammountOfPeople {
                names = names + "\(index + 1). \(people)"
            } else {
                names = names + "\(index + 1). \(people)\n"
            }
        }
    return names
}
    
    
    func add(name: String) -> String {
        var sentence = ""
        
        if line.isEmpty {
            line.append(name)
            sentence = "Welcome \(name). You're first in line!"
        } else {
            line.append(name)
            sentence = "Welcome \(name). You're number \(line.count) in line."
        }
        return sentence
}

   
    func serveNextCustomer() -> String {
        var sentence = ""
        var name: String
        
        if line.isEmpty {
            sentence = "The line is empty."
            return sentence
        }
        name = line.remove(at: 0)
        sentence = "\(name) is ready to be served, please come forward."
        return sentence
    }

    


    
    
    
    
}

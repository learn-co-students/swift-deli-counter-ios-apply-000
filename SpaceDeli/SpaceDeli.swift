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
        if line.isEmpty{
            return "The line is currently empty."
        }
        else {
            var theLine = "The line is:"
            for (index, item) in line.enumerated(){
                theLine = theLine + "\n\(index + 1). \(item)"
            }
            return theLine
        }
    }
    
    // Question #2
    func add(name: String) -> String {
        line.append(name)
        if name == line[0] {
            return "Welcome \(name). You're first in line!"
        }
        else {
            let n = line.count
            return "Welcome \(name). You're number \(n) in line."
        }
    }
    
    // Question #3
    func serveNextCustomer() -> String {
        if line.isEmpty {
            return "The line is empty."
        }
        else {
            let getServed = "\(line[0]) is ready to be served, please come forward."
            line.remove(at: 0)
            return getServed
        }
    }

}

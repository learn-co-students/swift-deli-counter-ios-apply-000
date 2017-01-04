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
        guard !line.isEmpty else { return "The line is currently empty." }
        var sentence = "The line is:"
        for (index, person) in line.enumerated() {
            sentence += "\n"
            sentence += "\(index + 1). \(person)"
        }
        return sentence
    }
    
    // Question #2
    func add(name: String) -> String {
        line.append(name)
        var sentence = "Welcome \(name). "
        sentence += line.count == 1 ? "You're first in line!" : "You're number \(line.count) in line."
        return sentence
    }
    
    // Question #3
    func serveNextCustomer() -> String {
        guard !line.isEmpty else { return "The line is empty." }
        let next = line.removeFirst()
        return "\(next) is ready to be served, please come forward."
    }
    
}

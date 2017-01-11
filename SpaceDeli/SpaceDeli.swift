//
//  SpaceDeli.swift
//  SpaceDeli
//
//  Created by Jim Campagno on 1/4/17.
//  Copyright © 2017 Jim Campagno. All rights reserved.
//

import Foundation

class SpaceDeli {
    let name: [String] = ["Neil", "Carl", "Isaac"]
    var line: [String] = []
    func description() ->  String {
        guard !line.isEmpty else {
            return "The line is currenly empty" }
        var wording = "The line is:"
        for (index, name) in line.enumerated() {
            wording += "\(index+1). \(name)"
        }
        return wording
            
        }
    
    // Question #2
    func add(name: String) -> String {
        line.append(name)
        var wording = "Welcome, \(name)"
        wording += line.count == 1 ? "You're first in line!" : "You're number \(line.count) in line!"
        return wording
        }
    
    // Question #3
    var specialPeople: [String] = ["Rey", "Beth", "Jess"]
    func serveNextCustomer() -> String {
        guard !line.isEmpty else {
        return "The line is empty"}
        let specialPeople = line.remove(at: 0)
        return "\(specialPeople) is ready to be served.  Please come forward"
        
        }
}

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
    
    // I'm submitting this even though I can't get the first test to pass. I am able to get the test to produce results apparently identical to the test but it won't take it. I can't figure out how to convert the array to a single string variable or without repeating "The line is:" on every iteration--which I assume is the answer? - Jose
    
    
    // Question #1
    
   /* Why does this not pass the test?:
    func description() -> String {
        if line.isEmpty {
            print("The line is currently empty.")
        } else {
            print("The line is:")
            for (index, person) in line.enumerated() {
                print("\(index + 1). \(person)")
            }
        }
        return "some string"
    }
 */
    
    /*
    func description() -> String {
        var resultLine = String()
        if line.isEmpty {
            resultLine = "The line is currently empty."
        } else {
            resultLine = ""
            print("The line is:")
            for (index, person) in line.enumerated() {
                print("\(index + 1). \(person)")
            }
        }
        
        print(resultLine)
        return resultLine
    }
 */
    
    
    func description() -> String {
        var returnedString = String ()
        if !line.isEmpty {
            returnedString = "The line is:"
            for (index, person) in line.enumerated() {
                returnedString += "\n\(index + 1). \(person)"
            }
        } else {
            if line.isEmpty {
                returnedString = "The line is currently empty."
            }
        }
        print(returnedString)
        return returnedString
    }

    
    // Question #2

    
    func add(name: String) -> String {
        var personName = String ()
        line.append(name)
        var countLine = line.count
        if countLine == 1 {
            personName = "Welcome \(name). You're first in line!"
        } else {
            for (index, person) in line.enumerated() {
                personName = "Welcome \(name). You're number \(index + 1) in line."
            }
        }
        print(personName)
        return personName
        
    }
    
    // Question #3

    
    func serveNextCustomer() -> String {
        var returnedString = String ()
        if line.isEmpty {
            returnedString = "The line is empty."
        } else {
            if !line.isEmpty {
                returnedString = "\(line[0]) is ready to be served, please come forward."
                line.remove(at: 0)
            }
        }
        print(returnedString)
        return returnedString
    }   
}

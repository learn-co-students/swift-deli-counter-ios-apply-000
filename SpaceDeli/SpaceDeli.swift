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
 
    func description () -> String {
        
        if line.isEmpty { return "The line is currently empty." }   //just returns this text if empty
                                                                    //fallthrough conditional
        
        var output = "The line is:" // string variable for output. not needed if empty
        
        for (count, name) in line.enumerated() { //enumerated for loop appends each item in the line
            output += "\n\(count + 1). \(name)" //along with the numbered place in line to output string
                                                //count +1 so first place in line isn't 0
        }
        
        return output  //returns the finished string
        
    }
    
    
    
    // Question #2

    func add (name: String) -> String {
        
        line.append(name) //first, adds name input to the line array local variable
        
        if line.count == 1 {
            return "Welcome \(name). You're first in line!"
        }   //return this text if there is now only one element in the array, otherwise fall through
        
        return "Welcome \(name). You're number \(line.count) in line."
    }   //returns new person's name and their place in line.
    
    
    
    
    // Question #3

    func serveNextCustomer () -> String {
        
        if line.isEmpty { return "The line is empty." } //return this if no elements in line array
        
        let name = line [0]  //falls through and copies first line element into return string const...
        
        line.remove( at: 0 ) //then removes that first line element. for lack of a pop-out method ^___^
        
        return "\(name) is ready to be served, please come forward." //order up!
        
    }
    
    //Additional ideas for functionality... Remove walkouts from the middle of the line? An iterating loop alerting each waiting person what their new position in line is when the line changes? Also, what if Space Meg Ryan or Space Billy Crystal walk into the Space Deli? We need to account for this important contigency...
}

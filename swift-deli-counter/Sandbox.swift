//  Sandbox.swift

import Foundation





func stringForDeliLine (names:[String]) -> String {
    
    
    
    var lineSentence = "The line is:"
    
    if names.isEmpty {
        
        return "The line is currently empty."
    }
        
    else {
        
        for (index, eachName) in names.enumerate() {
            
            let numbering = index + 1
            
            lineSentence = lineSentence + ("\n\(numbering). \(eachName)")
            
            
        }
        
    }
    
    return lineSentence
}



func addName (name: String, toDeliLine: [String]) -> [String] {
    
    var newLine = toDeliLine
    
    newLine.append(name)
    
    print ("Hello \(name)! You're number \(newLine.count) in line. Almost there!")
    
    return newLine
        
        
}


func serveNextCustomerInDeliLine (nextArray:[String]) -> [String] {
    
    var nameRemoved = nextArray
    
    if !nameRemoved.isEmpty {
        
        let nextPerson = nameRemoved.removeFirst()
        
        print ("Welcome \(nextPerson)! You're next in line")

    }
    
        return nameRemoved
    
}





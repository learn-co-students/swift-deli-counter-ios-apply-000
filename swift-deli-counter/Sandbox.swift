//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */


func stringForDeliLine(arrayOfNames: [String]) -> String {
    
    var result: String = "The line is:\n"
    
    if arrayOfNames.isEmpty {
        
        print("The line is currently empty.")
        
    }
    
    for (index, name) in arrayOfNames.enumerated() {
        
        result = "\(index + 1). \(name)\n"
        
    }
    return result
}


func addName(name: String, deliLine: [String]) -> [String] {
    
    var alteredLine = deliLine
    
    alteredLine.append(name)
    
    print("Welcome, \(name)! Your place in line is \(alteredLine.count)" )
    
    return alteredLine
}


func serveNextCustomerInDeliLine(deliLine: [String]) -> [String] {
    
    var newLine = deliLine
    
    if newLine.isEmpty {
        
        print("Line is empty")
        
    } else {
        
        newLine.removeFirst()
        
        print("\(newLine[0]), it is your turn")
    }
    return newLine
}





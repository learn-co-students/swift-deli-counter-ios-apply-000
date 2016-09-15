//  Sandbox.swift

import Foundation

// array arryIn must be declared and defined
// function returns string containing lines of each element of passed in array
func stringForDeliLine(deliLine: [String]) -> String {
    
    if (deliLine.isEmpty) {
        return "The line is currently empty."
    }
    
    var resultString = "The line is:\n"
    
    for (element,value) in deliLine.enumerate() {
        resultString += "\(element + 1). \(value)\n"
    }
    
    return resultString
}

// name and toDeliLine must be declared and defined 
// function adds name string to deliLine array. Outputs deliLine array
func addName(name: String, toDeliLine: [String]) -> [String] {
    
    var deliLine = toDeliLine
    
    deliLine.append(name)
    print("Welcome dear valued customer. Your place in line is \(deliLine.count)")
    
    return deliLine
}

// deliLineIn must be declared and defined
// fn removes first element of array if array is not empty and returns array.
func serveNextCustomerInDeliLine(deliLineIn: [String]) -> [String] {
    var deliLine = deliLineIn
    if !deliLine.isEmpty {
        print ("\(deliLine.removeFirst()) your the next customer. How can I help you?")
    }
    return deliLine
}

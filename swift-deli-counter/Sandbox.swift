//  Sandbox.swift

import Foundation


func stringForDeliLine(deliLine: [String]) -> String {
    
    if deliLine.count == 0 {
        return "The line is currently empty."
    }
    
    var result = "The line is:"
    for var i = 0; i < deliLine.count; i++ {
        let numberInLine = i + 1
        result += "\n\(numberInLine). \(deliLine[i])"
    }
    print(result)
    return result
}
    
func addNameTo(name: String, var deliLine: [String]) -> [String] {
    deliLine.append(name)
    print("Welcome \(name)! You are number \(deliLine.count) in line.")
    return deliLine
}
        
func serveNextCustomerInDeliLine(var deliLine: [String]) -> [String] {
    
    if deliLine.count > 0 {
        let nextCustomer = deliLine.removeFirst()
        print("Now serving \(nextCustomer)")
    } else {
        print("The line is currently empty.")
    }
    return deliLine
}


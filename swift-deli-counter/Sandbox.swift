//  Sandbox.swift

import Foundation

func stringForDeliLine(_ names: [String]) -> String {
    if names.isEmpty {
        return "The line is currently empty."
    }
    
    var result = "The line is:"
    
    for (index, name) in names.enumerated() {
        result += "\n\(index + 1). \(name)"
    }
    
    print(result)
    return result
}


func addName(_ name: String, toDeliLine: [String]) -> [String] {
    
    var newDeliLine = toDeliLine
    
    newDeliLine.append(name)
    
    print("Welcome \(name)! You are number \(newDeliLine.count) in line.")
    
    return newDeliLine
    
}

func serveNextCustomerInDeliLine(_ deliLine: [String]) -> [String] {
    var newDeliLine = deliLine
    
    if newDeliLine.count > 0 {
        
        let nextCustomer = newDeliLine.removeFirst()
        print("Now serving \(nextCustomer)")
        
    } else {
        print("The line is currently empty.")
    }
    return newDeliLine
}


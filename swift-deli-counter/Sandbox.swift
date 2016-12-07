//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */

func stringForDeliLine(deliLine: [String]) -> String {
    
    if deliLine.count == 0 {
        return "The line is currently empty."
    }
    
    var result = "The line is:"
    for i in 0 ..< deliLine.count {
        let numberInLine = i + 1
        result += "\n\(numberInLine). \(deliLine[i])"
    }
    print(result)
    return result
}

func addName(name: String, toDeliLine deliLine: [String]) -> [String] {
    var newDeliLine = deliLine
    newDeliLine.append(name)
    print("Welcome \(name)! You are number \(newDeliLine.count) in line.")
    return newDeliLine
}

func serveNextCustomerInDeliLine(deliLine: [String]) -> [String] {
    var newDeliLine = deliLine
    
    if newDeliLine.count > 0 {
        let nextCustomer = newDeliLine.removeFirst()
        print("Now serving \(nextCustomer)")
    } else {
        print("The line is currently empty.")
    }
    return newDeliLine
}

//  Sandbox.swift

import Foundation

func stringForDeliLine(_ addName: [String]) -> String {
    var lineCount:String = ("")
    if addName.isEmpty {
        lineCount.append("The line is currently empty.")
    } else {
        lineCount = "The line is:"
        for (index, name) in addName.enumerated() {
            lineCount.append("\n\(index + 1). \(name)")
        }
    }
    
    return lineCount
}

func addName (_ nameOfCustomer: String, toDeliLine deliLine: [String]) -> [String] {
    var line = deliLine
    line.append(nameOfCustomer)
    print("Welcome \(nameOfCustomer), you are number \(line.count) in line!")
    
    return line
}

func serveNextCustomerInDeliLine(_ removeFirstName: [String]) -> [String] {
    var newLine = removeFirstName
    if removeFirstName.isEmpty{
        return removeFirstName
    } else {
        let newCustomer = newLine.removeFirst()
        print ("Welcome \(newCustomer)! It is now your turn!")
    }
    
    return newLine
}
 

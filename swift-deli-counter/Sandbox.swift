//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */

class Sandbox {
func stringForDeliLine (deliline: [String]) -> String {
    print(deliline)
    
    if deliline.count == 0 {
        return "The line is currently empty"
    }
    var returnvalue = "The line is:"
    for i in 0 ..<  deliline.count {
        let numberinline = i + 1
        returnvalue += "\n\(numberinline). \(deliline[i])"
        print(i)
    }
    return returnvalue
    
}

func addname (name: String, deliLine: [String]) -> [String] {
    var newDeliLine = deliLine
    newDeliLine.append(name)
    print("Hi \(name) Your place in line is \(newDeliLine.count) ")
    return newDeliLine

}

func serveNextCustomerInDeliLine (deliLine: [String]) -> [String] {
    var newDeliLine = deliLine
    if newDeliLine.isEmpty {
        return ["The line is Empty"]
    }
    newDeliLine.removeFirst()
    print("\(deliLine[0]), it is your turn")
    return newDeliLine
}
}

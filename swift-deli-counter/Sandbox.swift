//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */

//#1-3:

var namesInLine = ["Al", "Chris", "Zach"]

func stringForDeliLine(_ deliLine:[String]) -> String {
    var readout = String()
    if !deliLine.isEmpty {
        readout = "The line is:\n"
        for(index, name) in deliLine.enumerate() {
            readout = readout + "\(index + 1). \(name)\n"
        }
    }
    else {
        print("The line is currently empty")
    }
    return readout
}

// would like to know why it is necessary for var readout = String() and not String, or readout: [String] ??

//#4

func addName(_ newCustomer: String, var deliLine: [String]) -> [String] {
    deliLine.append(newCustomer)
    print("Welcome \(newCustomer)! Your place in line is \(deliLine.count)")
   return deliLine
}

//#5 & #6

func serveNExtCustomerInDeliLine(var _ deliLine: [String]) -> [String]{
    if !deliLine.isEmpty {
        deliLine.removeFirst()
    print("Will \(deliLine[0]) please step forward!")
    return deliLine
    } else {
    return deliLine
    }
}

//error message that deliLine was a 'let' constant; fixed be declaring a variable in the argument


//  Sandbox.swift

import Foundation

func stringForDeliLine(names:[String])->String{
    var resultString: String
    if names.isEmpty {
        resultString = "The line is currently empty."
    }else{
        resultString = "The line is:"
        for (index,name) in names.enumerate() {
            resultString += "\n\(index+1). \(name)"
        }
    }
    return resultString
}

func addName(name:String, toDeliLine:[String])->[String]{
    var result: [String] = toDeliLine
    result.append(name)
    print("Welcome, \(name)! You are number \(result.count) in line. Thank you for your patience and we'll be right with you.")
    return result
}

func serveNextCustomerInDeliLine(deliLine:[String])->[String]{
    var result:[String]=deliLine
    if !deliLine.isEmpty {
        print("\(deliLine[0]), your order is ready!")
        result.removeFirst()
    } else {
        print("There are no customers in line.")
    }
    return result
}


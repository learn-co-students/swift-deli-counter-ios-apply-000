//  Sandbox.swift

import Foundation

func takeANumber(deli: [String], name: String) -> [String] {
    var resultDeli = deli
    resultDeli.append(name)
    
    print("You are number \(deli.count+1)")
    
    return resultDeli
}

func nowServing(deli: [String]) -> [String] {
    var resultDeli = deli
    let servingName = resultDeli.removeAtIndex(0)
    print("Currently Serving \(servingName)")
    return resultDeli
}

func printLine(deli: [String]) -> String {
    if deli.count == 0 {
        return "The line is empty"
    }
    
    var result = "The line is currently: "
    for (index, person) in deli.enumerate() {
        result += "\(index+1). \(person)"
        if index != deli.count-1
        {
            result += " "
        }
    }
    return result
}


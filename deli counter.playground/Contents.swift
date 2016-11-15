//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func stringForDeliLine(_ deliLineString:[String]) -> String {
    
    var deliLineStringOutput:String = "The line is currently empty."
    var deliLineArray:[String] = ["\(deliLineStringOutput)"]
    
    if !deliLineString.isEmpty {
    
        deliLineArray[0] = "The line is:"
        
        
        for (index, name) in deliLineString.enumerated() {
        deliLineArray.append("\(index + 1). \(name)")
        }
        
        deliLineStringOutput = deliLineArray[0]
        
        for (index, line) in deliLineArray.enumerated() {
        print("\(line)\n")
        
            if index > 0 {
            deliLineStringOutput.append("\n\(line)")
            }
            
        }

    }
    
   
    
    
    return deliLineStringOutput
    
    
}

stringForDeliLine(["Victoria","Danny","Lyel"])

stringForDeliLine([])






func addName(_ name:String, toDeliLine deliLine:[String]) -> [String] {
    
    var deliLineOutput:[String] = deliLine
    deliLineOutput.append(name)
    print("Welcome \(name)! You are in position number \(deliLineOutput.count).")
    return deliLineOutput
    
}

addName("Jeremy", toDeliLine:["Al", "Chris", "Zach"])

addName("Al", toDeliLine: [])






func serveNextCustomerInDeliLine(_ deliLine:[String]) -> [String] {

    var deliLineOutput:[String] = deliLine
    
    if !deliLineOutput.isEmpty {
    
    print("\(deliLineOutput[0]), you're next!")
    deliLineOutput.removeFirst()
    }
    
    else {
        print("There's no one on line.")
    }
    
    return deliLineOutput
    
}

stringForDeliLine(serveNextCustomerInDeliLine(["Jeremy", "Al", "Chris", "Zach"]))

serveNextCustomerInDeliLine([]).isEmpty










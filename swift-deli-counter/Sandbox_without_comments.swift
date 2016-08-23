//  Sandbox.swift

import Foundation


//1

let deliLineNames1: [String] = ["Al", "Chris", "Zach"]

func stringForDeliLine(names:[String]) -> String {
        var list: String = ""
    
    if names.isEmpty {
        return "The line is currently empty."
    } else {
        list = "The line is:\n"
        
        for (index, name) in names.enumerate(){
            list = list + ("\(index+1).\(name)\n")
        }
    }
    return list
}




//2


var deliLineNames2: [String] = ["Lindsay", "Amanda", "Tanner", "Jim"]
var nameToAdd: String = "Marie"

func addName(name: String, toDeliLine: [String]) -> [String] {
   
    var newDeliLine = toDeliLine
    newDeliLine.append(name)
    
    for (index, name) in newDeliLine.enumerate() {
        print ("Welcome \(name)! Thank you for waiting patiently. You are now number \(index + 1) in line.")
    }
    return newDeliLine
  }




//3

var deliLineNames3: [String] = ["Jim", "Lindsay", "Amanda", "Tanner", "Marie"]

func serveNextCustomerInDeliLine(deliLineNames:[String]) -> [String]{
    var newDeliLineNames = deliLineNames
   
    
    if !newDeliLineNames.isEmpty {
        let nextCustomer = newDeliLineNames[0]
        print ("\nHello, \(nextCustomer), it is your now your turn. Please proceed to counter number one, where you can pass Marie into Flatiron's iOS Mobile Development Course. :)")
        
    } else {
        print ("The line is currently empty.")
    }
        return newDeliLineNames
}






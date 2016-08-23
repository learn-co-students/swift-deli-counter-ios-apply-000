//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */


//1

let names: [String] = ["Al", "Eric", "Marie"]
//let other_names: [String] = ["Joe", "Bob"]

func stringForDeliLine(names:[String]) -> String {
    var answer: String = ""
    
    if names.isEmpty {
        answer = ("The line is currently empty")
    } else {
        answer = ("The line is:\n")
        for (index, name) in names.enumerate() {
            answer += ("\(index + 1). \(name)\n")
        }
    }
    return answer
}

//print(stringForDeliLine(names))





//2

var name: String = "Joe"
var deliLine: [String] = ["Al", "Eric", "Marie"]


func addName(x: String, y: [String]) -> [String] {
    var new = y
        new.append(x)
    
    for (index, name) in new.enumerate() {
        print ("Welcome \(name), you are \(index + 1) in line")
    }
    return new
}
    //   addName(name, y: deliLine)





//3

func serveNextCustomerInDeliLine(x:[String]) -> [String]{
    var new = x
    
    if !new.isEmpty {
        let person = new[0]
        new.removeFirst()
        print ("hello, \(person), it is your turn")
    } else {
        print ("The line is currently empty.")
    }
    return new
}

//print(serveNextCustomerInDeliLine(deliLine))
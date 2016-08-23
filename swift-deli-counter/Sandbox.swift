//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */

//1

let namess: [String] = ["Al", "Eric", "Marie"]
let other_names: [String] = ["Joe", "Bob"]

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

//stringForDeliLine(namess)





//2

var name: String = "Joe"
var deliLine: [String] = ["Al", "Eric", "Marie"]


func addName(x: String, var y: [String]) -> [String] {
    y.append(x)
    
    for (index, name) in y.enumerate() {
        print ("Welcome \(name), you are \(index + 1) in line")
    }
    return y
}
    //    print(addName(name, y: deliLine))





//3

func serveNextCustomerInDeliLine(var x:[String]) -> [String]{
    if !x.isEmpty {
        var person = x[0]
        x.removeFirst()
        print ("hello, \(person), it is your turn")
    }
    return x
}

//    print(serveNextCustomerInDeliLine(deliLine))
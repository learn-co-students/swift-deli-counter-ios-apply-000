//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */


func stringForDeliLine(name:[String])->String{
var returnString = ""
var tempString = ""
    
    if name.isEmpty{
        returnString = "The line is currently empty."
    }
    else {/* If name is not empty */
    tempString = ("The line is:\n")
    
    for (index, name) in name.enumerate(){
        tempString = tempString + ("\(index + 1). \(name)\n")
        }
        returnString = tempString
    }
    print(returnString)
    return returnString
}

func addName(name:String, toDeliLine:[String])->[String]{
    var deliArray = toDeliLine
    deliArray.append(name)
    for (index, name) in deliArray.enumerate(){
        print("Welcome \(name), you are customer number \(index + 1)")}
    
    return deliArray
}

func serveNextCustomerInDeliLine(customer:[String])->[String]{
    
    var stringArrayOut:[String] = customer
    
    
    if customer.isEmpty{
        return stringArrayOut
    }else{
        let removeString = stringArrayOut.removeFirst()
        print("Next customer \(stringArrayOut[0])")
    }
    return stringArrayOut
}

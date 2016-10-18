//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */

func stringForDeliLine(names:[String]) -> String {
    if names.isEmpty {
        return "The line is currently empty"
    } else if names.count == 1 {
        return "The line is:\n1. \(names[0])"
    }
    else if names.count == 2 {
        return "The line is:\n1. \(names[0]) \n2. \(names[1])"
    }
    else if names.count == 3 {
        return "The line is:\n1. \(names[0]) \n2. \(names[1]) \n3. \(names[2])"
    }
    else if names.count == 4 {
        return "The line is:\n1. \(names[0]) \n2. \(names[1]) \n3. \(names[2]) \n4. \(names[3])"
    }
    else if names.count == 5 {
        return "The line is:\n1. \(names[0]) \n2. \(names[1]) \n3. \(names[2]) \n4. \(names[3]) \n5. \(names[4])"
    } else {
        return "Too many people!!"
    }
}
// 4.

func addNameTo(name: String, toDeliLine deliLine:[String]) -> [String] {
    var newDeliLine = deliLine // Must do this because deliLine Array is a constant when used as an argument. Cannot directly edit deliLine. I.E. deliLine.append()
    newDeliLine.append(name) // Adding String Value of name to end of array.
    print("Welcome \(name). You are #\(newDeliLine.count) in line.")
    return newDeliLine
}


// Initially got confused as I was trying to include everything in the return function. Forgot i could sequence and print a message first. Then on next line return the array needed.
// Once I understood this, It made it a lot easier to answer question 5. 




//5.

func serveNextCustomerInDeliLine(nextCustomer:[String]) -> [String] {
    if nextCustomer.count > 0 { // Test to make sure array actually has a value.
        var newDeliList = nextCustomer // Again need to assign array a new value so we can use methods on it.
        newDeliList.removeFirst()
        print("Hello \(newDeliList[0]). It is your turn!!")
        return newDeliList
    } else {
        return [] // If array has no values we can return blank array.
    }
}



// 5. Notes. If array.count > 0. then removeFirst method. We will then add print("It is there turn at array[0]". Then on next line we will return updated array with name removed.



// 1. Declare a function named stringForDeliLine(_:) that takes one agrument, an array of string, and returns a string. Write its implementation so that it provides a readout of the names in the argument array.

// 2. For an arrray containing the names "Al" , "Chris", and "Zach" it should return a string as follows.
//                The line is:
//                1. Al
//                2. Chris
//                3. Zach

//      Rememeber that the newline charachter can be written into a string using \n

// 3. For an empty array the function should return a string that reads: "The line is currently empty"

// 4. Declare a function named addName(_:toDeliLine:) that takes two arguments, a string name and an array of strings deliLine, and returns an array of strings. This method should add the name string to the deliLine array, print a welcome message for the new customer telling them their place in line (starting from one, not zero), and return the altered deliLine array.

// 5. Declare a function named serveNextCustomerInDeliLine(_:) which takes one argument, an array of strings, and returns an array of strings. The function should remove the first name from the array (there is a removeFirst() array method), print a message for this "next customer" telling them it is their turn, and returning the array with the customer's name removed.

// 6. If you run the tests at this point, you should notice that calling removeFirst() on an empty array causes a crash. Use an if statement to guard against this case.

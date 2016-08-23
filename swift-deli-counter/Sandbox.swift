//  Sandbox.swift

import Foundation




//print ("Hello Jim! Nice to meet you. My name is Marie and I am an Architect. I think of the structure of coding in the same way I relate to a building. You'll see a bit of my background influence nested below! \n")



//1

//FOUNDATION: EXISTING CONDITIONS
let deliLineNames1: [String] = ["Al", "Chris", "Zach"]
//declaring a constant String array, which represents a list of people in the queue for the deliCounter




//EXTERIOR STRUCTURE:THE FUNCTIONAL FRAMEWORK
func stringForDeliLine(names:[String]) -> String {
    //defining the function called stringForDeliLine, which takes a String array argument called 'names'(placeholder) and returns a String; curly brackets set up the body function, which consists of an if-else condition with a for-in loop. The string I am printing in the for-in loop interpolates the values, 'index' and 'name'
    
    
    //THE INTERIOR STRUCTURE: (IF STRUCTURALLY SOUND, BUILD WALLS (CONDITION), AND INSTALL A SYSTEM (FOR-IN LOOP) WITHIN EACH ENCLOSURE)
    var list: String = ""
    //declaring a new empty String variable (list) to pass the return value
    
    
    if names.isEmpty {
        return "The line is currently empty."
        //uses a method to check that the placeholder variable (name) is an empty array; if true, then it returns a string
    } else {
        list = "The line is:\n"
        for (index, name) in names.enumerate(){
            //for-in loop iterates over each value in the array of strings. The .enumerate() method added to the 'names' String array provides access to the value('name') in the current iteration as well as to it's index in the array, which is used to display numbered instructions
            
            list = list + ("\(index+1).\(name)\n")
            //concatenating a String of variables within the variable 'answer'; the consecutive index and associated string value are added to the String, 'answer', in order to pass the return value; add '1' to the index value (to start instructions from 1 and not 0)
        }
    }
    //THE INFRASTRUCTURE: THE RESULT
    return list
}




//BUILDING CHECK
//print (stringForDeliLine(deliLineNames1))
//print to console and call on the function, passing through the arrayOfNames variable previously created



//______________________________________________________________________________________________________________________________





//2


//FOUNDATION: EXISTING CONDITIONS
var deliLineNames2: [String] = ["Lindsay", "Amanda", "Tanner", "Jim"]
var nameToAdd: String = "Marie"
//declaring a variable String array (deliLineNames2, which represents a list of people in the queue for the deli counter; declaring a variable String (nameToAdd) that will be added to the current queue of people



//EXTERIOR STRUCTURE:THE FUNCTIONAL FRAMEWORK
func addName(name: String, toDeliLine: [String]) -> [String] {
    //defining the function called addName, which takes two arguments: a String value 'name' and an String array 'deliLine', then returning a String array; The curly brackets set up the body function, which consists of a for-in loop. The string I am printing in the for-in loop interpolates the values, 'index' and 'name'
    
    
    //THE INTERIOR STRUCTURE: FINALISE THE NEW FRAMEWORK AND INSTALL A SYSTEM (FOR-IN LOOP)
    var newDeliLine = toDeliLine
    newDeliLine.append(name)
    //declaring a variable (newDeliLine) in order to access deliLine argument and modify it; the .append() method adds the String value (name) to the end of the String array (deliLine), which now is set to equal the variable 'newDeliLline'
    
    
    for (index, name) in newDeliLine.enumerate() {
        print ("Welcome \(name)! Thank you for waiting patiently. You are now number \(index + 1) in line.")
        //for-in loop iterates over each value (name) in the new String array (newDeliLine) with "Joe" added; The .enumerate() method added to the end of 'newDeliLine' provides access to the value 'name' in the current iteration as well as to it's index in the array, which is used to display what number each person is in line; add 1 to index to start counting from 1 and not 0
        
    }
    //THE INFRASTRUCTURE: THE RESULT
    return newDeliLine
    //returns the altered 'toDeliLine' array
}



//BUILDING CHECK
//addName(nameToAdd, toDeliLine: deliLineNames2)
//call on the function, passing through both parameters (name and deliLine), which are declared above



//______________________________________________________________________________________________________________________________





//3


//FOUNDATION: EXISTING CONDITIONS
var deliLineNames3: [String] = ["Jim", "Lindsay", "Amanda", "Tanner", "Marie"]
//declaring a variable String array (deliLineNames3), which represents a list of people in the queue for the deli counter; declaring a variable String (name) that will be added to the current queue of people



//EXTERIOR STRUCTURE:THE FUNCTIONAL FRAMEWORK
func serveNextCustomerInDeliLine(deliLineNames:[String]) -> [String]{
    //defining the function called  serveNextCustomerInDeliLine, which takes one argument, a String array 'deliLineNames' and returns a String array. The curly brackets set up the body function, which consists of an if-else condition. The return string interpolates 'nextCustomer'
    
    
    
    //THE INTERIOR STRUCTURE: IF STRUCTURALLY SOUND, BUILD WALLS (CONDITION)
    var newDeliLineNames = deliLineNames
    //declaring a new String variable (newDeliLineNames) to access the 'deliLineNames' variable and pass the return value
    
    if !newDeliLineNames.isEmpty {
        ////uses a method .isEmpty to check that that the line of people ([deliLineNames])is NOT empty; if true, then the function will continue to call the nextCustomer
        let nextCustomer = newDeliLineNames[0]
        //a new constant 'nextCustomer'is declared, which is set to equal the first person in the String array 'newDeliLineNames') which is written 'newDeliLineNames[0]' (subscript counting begins with 0 for computers)
        newDeliLineNames.removeFirst()
        //uses a method .removeFirst() to remove the first value within the string array 'newDeliLineNames', which is 'Jim'
        print ("\nHello, \(nextCustomer), it is your now your turn. Please proceed to counter number one, where you can pass Marie into Flatiron's iOS Mobile Development Course. :)")
        //prints to the console with interpolated value 'nextCustomer'
        
    } else {
        print ("The line is currently empty.")
    }
    
    //THE INFRASTRUCTURE: THE RESULT
    return newDeliLineNames
}




//BUILDING CHECK
//print(serveNextCustomerInDeliLine(deliLineNames3))
////print to the console, call on the function, passing through the parameter (deliLine3), which is declared above






//print("\nCheers Jim! Hopefully see you at Flatiron!")




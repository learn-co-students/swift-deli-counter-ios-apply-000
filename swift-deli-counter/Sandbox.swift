//  Sandbox.swift

import Foundation

/**

 * Write your functions here!

 */

func stringForDeliLine(listOfNames:[String])->String
{
    var stringOfNames:String = "The line is:"
    
    if(listOfNames.isEmpty)
    {
        stringOfNames = "The line is currently empty."
        return stringOfNames
    }
    else
    {

        for (index, name) in listOfNames.enumerate()
            {
                stringOfNames = stringOfNames + "\n\(index+1). \(name)"
            }
        
        return stringOfNames
    }

}


/*  In the next two functions I was getting an error when
    I made changes to the passed-in array and returned a
    changed version of it. The only solution I could think
    of at this moment was to make and return a duplicate array
 */


func addName(name:String, toDeliLine:[String])->[String]
{
    var duplicateLine = toDeliLine
    duplicateLine.append(name)
    print(duplicateLine.count)
    return duplicateLine
}

func serveNextCustomerInDeliLine(listOfNames:[String])->[String]
{
    if(listOfNames.isEmpty)
    {
        return listOfNames
    }
    else
    {
        var duplicateList = listOfNames
        print("Hello \(duplicateList[0]), it is your turn!")
        duplicateList.removeFirst()
        return duplicateList
    }
    
}
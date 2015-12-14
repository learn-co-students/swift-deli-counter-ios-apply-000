# Swift — Deli Counter

## Objectives

1. Write functions that use control flow statements.

## Instructions

Open the `swift-deli-counter.xcworkspace` and navigate to the `Sandbox.swift` file. You will need to declare all three functions in order to get the tests to build (`⌘` `U`). If you wish to solve each function one at a time, call your functions from the AppDelegate with your own test data and run the scheme with `⌘` `R`.

1. Declare a function named `stringForDeliLine(_:)` that takes one argument, an array of strings, and returns a string. Write its implementation so that it provides a readout of the names in the argument array. 
  * For an array containing the names "Al", "Chris", and "Zach" it should return a string as follows:

        ```
        The line is:
        1. Al
        2. Chris
        3. Zach
        ```  
   **Hint:** *Remember that the newline character can be written into a string using* `\n`.
   * For an empty array, the function should return a string that reads:  

        ```
        The line is currently empty.
        ```

2. Declare a function named `addName(_:toDeliLine:)` that takes two arguments, a string `name` and an array of strings `deliLine`, and returns an array of strings. This method should add the `name` string to the `deliLine` array, print a welcome message for the new customer telling them their place in line (starting from one, not zero), and return the altered `deliLine` array.

3. Declare a function named `serveNextCustomerInDeliLine(_:)` which takes one argument, an array of strings, and returns an array of strings. The function should remove the first name from the array (there is a `removeFirst()` array method), print a message for this "next customer" telling them it is their turn, and returning the array with the customer's name removed.
  * If you run the tests at this point, you should notice that calling `removeFirst()` on an empty array causes a crash. Use an `if` statement to guard against this case.

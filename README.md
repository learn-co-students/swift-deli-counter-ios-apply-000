

# Deli Counter - Take a Number

## Instructions

A pretty important deli needs somebody to program the "Take a Number" feature for their counter.

At the beginning of the day, the deli is empty and is represented by an empty array.

Example: 


Write all of your code in `AppDelegate.swift`. 

1. Build a method that a new customer will use when entering the deli. The method, `takeANumber`, should accept the new person's name, the current line in `[String]` format, and return the updated line. Also, the method should `println` their position in line. And don't go being too programmer-y and give them their index. These are normal people. If they are 7th in line, tell them that. Don't get their hopes up by telling them they are number 6 in line.

2. Build a method `nowServing`. This method also should take a `[String]` deliLine as an argument. This method should return the updated `[String]` deli Line and `println` the name of the next person in line after removing them from the line. If there is nobody in line, it should `println` that "There is nobody waiting to be served!" and return `nil`

3. Build a method `line` that returns people their current place in line (returned as an `String`). If there is nobody in line, it should return "The line is currently empty."

<a href='https://learn.co/lessons/swift-deli-counter' data-visibility='hidden'>View this lesson on Learn.co</a>

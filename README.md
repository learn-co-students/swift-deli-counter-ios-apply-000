![](http://i.imgur.com/bs4NYnJ.png)

> We cannot solve our problems with the same thinking we used when we created them. ~[Albert Einstein](https://en.wikipedia.org/wiki/Albert_Einstein)

# Instructions

In the year 2050, you've awoken from a dream that seemed all to real. Einstein made a prediction that we would one day find life somewhere else (besides Earth). This life would be just like ours, and most importantly.. this other species would have delis (according to him).

If we ever come in contact with this species, we want to provide them with an application that makes running delis that much easier. Writing Swift code!

Open the `SpaceDeli.xcodeproj` file. Then locate the `SpaceDeli.swift` file, this is where you will be writing your code. You should notice that we've created a variable for you named `line` of type [`String`] and have given it a default value of [ ], which is an empty `Array`. You can interact with this variable in the functions you will be creating below.

**1.** Create a function, `description()` that takes in no arguments. This function should return a `String`. In your implementation of this function, you should look to produce a `String` value that represents all of the people waiting in line (in numbered order). For example, if our `line` variable above consisted of the following individuals:  
* Isaac
* Neil
* Carl

We would expect the `String` value we get back from this function to look like the following:

```
The line is:
1. Isaac
2. Neil
3. Carl
```
If the `line` variable is empty, then the `String` value that should be returned is the following:

```
The line is currently empty.
```

**2.** Create a function, `add(name:)` which takes in one argument labeled `name` of type `String`. This function should return back a `String` value. In your implementation of this function, you should first add this `name` variable to the `line` variable. After doing so you should produce a `String` value making sure you adhere to the following conditions. If this person who we've just added to the `line` variable _is_ the first person in line, then you should return back the following `String` value (x should replaced here with `name`s value):

```
Welcome x. You're first in line!
```

If the individual walking in is being added to a line which _already_ has people on it, then you should return back the following `String` value (y represents that persons actual number in line):

```
Welcome x. You're number y in line.
```

**3.** Create a function, `serveNextCustomer()` which takes in no arguments. It should return back a `String` value. In your implementation of this function, you should adhere to the following conditions.

If the `line` variable is empty, than you should return back the following `String`:
```
The line is empty.
```

If the `line` variable isn't empty (in that there's people to be served), you should remove the person that is next in line. If our `line` variable consisted of the following individuals, ["Rey", "Beth", "Jess"] then the person who is to be served next is "Rey" as she is first in line.

The `String` value that should be returned in this scenario is the following:

```
Rey is ready to be served, please come forward.
```

---

Albert Einstein never said anything about delis in space, this is something I made up. But if you want to learn about something he _did_ predict, you can watch Neil deGrasse Tyson explain  it here:

[![Space](http://img.youtube.com/vi/5_4N1ozld-s/0.jpg)](https://www.youtube.com/watch?v=5_4N1ozld-s "Space")




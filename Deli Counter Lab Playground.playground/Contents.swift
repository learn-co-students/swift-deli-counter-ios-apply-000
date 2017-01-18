
import Foundation

//MODIFIED BY RODOLFO DELGADO IN JAN 16, 2017. 9177565688

//class SpaceDeli {

// Question #1
    
    var line : [String] = []
    
    func description() {
       
        print ("The line is:")
        
        if line == [] {
            print("The line is currently empty")
            }

        for (index, step) in line.enumerated() {
                print("\(index + 1): \(step)")
            }
            }

    line =  ["Isaac", "Neil" , "Carl"]
    //"Isaac", "Neil" , "Carl"
 description()


// Question #2

func add (name : String) {

        if line == [] {
            print ("Welcome, \(name), You're the first in line!")
            }
    
        else {
            print ( "Welcome, \(name), You're number \(line.count + 1 ) in line!")
            }
        
        line.append(name)
    }

 add (name: "Rodolfo")


// Question #3
    
    
    func serveNextCustomer(){

        if line == [] {
            print ("The line is empty.")
            }
        
        else {
            print("\(line[0]) is ready to be served, please come forward")
            }
    
        
    }
    serveNextCustomer()



//}


/* NOTES:
 1. I'm not sure why the Class creation is making my program not run, that's why I converted it to text.
 2. In Question n.3, I wasn't able to make it work if the var line has nothing in it (say "the line is empty")  * cries in spanish *
 3. Other than that, I had fun making this.
 */

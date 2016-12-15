//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        var people: [String] = ["connor", "jason", "katie"]
        
        serveNextCustomerInDeliLine(customers: people)
//        let ar = addName(name: "Dedee", toDeliLine: people)
//        print(ar)
        // let iosAncestors = ["Al", "Chris", "Zach"]
        
        // Do not alter
        return true  //
    }   //////////////
}       /////////////


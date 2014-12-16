//
//  AppDelegate.swift
//  swift-objc-deli
//
//  Created by Joe Burgess on 12/7/14.
//  Copyright (c) 2014 Flatiron School. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func takeANumber(deli: [String], name: String) -> [String]
    {
        var resultDeli = deli
        resultDeli.append(name)

        println("You are number \(deli.count+1)")

        return resultDeli
    }

    func nowServing(deli: [String]) -> [String]
    {
        var resultDeli = deli
        let servingName = resultDeli.removeAtIndex(0)
        println("Currently Serving \(servingName)")
        return resultDeli
    }

    func printLine(deli: [String]) -> String
    {
        if deli.count == 0
        {
            return "The line is empty"
        }

        var result = "The line is currently: "
        for var index = 0; index<deli.count; ++index
        {
            result+= "\(index+1). \(deli[index])"
            if index != deli.count-1
            {
                result += " "
            }
        }
        return result
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


//
//  AppDelegate.swift
//  SwiftSOLIDPrinciples
//
//  Created by Karim Ebrahem on 10/9/18.
//  Copyright © 2018 KarimEbrahem. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    enum TimerClientType {
        case SOLID
        case NotSOLID
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Timer Example - SRP, OCP, DIP
//        let clientType: TimerClientType = .SOLID
//        let client: Client = (clientType == .SOLID) ? SolidClient() : NotSolidClient()
//        client.startScheduler()
        
        // Square/Rectangle Example - LSP
//        let rect1 = NotSolidRectangle()
//        rect1.setWidth(value: 3.0)
//        rect1.setHeight(value: 7.0)
//
//        let square1 = NotSolidSquare()
//        square1.setWidth(value: 3.0)
//        square1.setHeight(value: 7.0)
//
//        print("[Not SOLID] Rectangle: (width: \(rect1.width()), height: \(rect1.height())), area: \(rect1.area())")
//        print("[Not SOLID] Square: (width: \(square1.width()), height: \(square1.height())), area: \(square1.area())")
//        
//        let rect2 = SolidRectangle(width: 3.0, height: 7.0)
//        let square2 = SolidSquare(side: 3.0)
//
//        print("[SOLID] Rectangle: (width: \(rect2.width), height: \(rect2.height)), area: \(rect2.area())")
//        print("[SOLID] Square: (width: \(square2.side), height: \(square2.side)), area: \(square2.area())")
        
        // ATM Example - ISP
        let atmUI = NotSolidConsoleATM()
        let depositTransaction1 = NotSolidDepositTransaction(ui: atmUI)
        depositTransaction1.execute()
        
        let depositUI = SolidDepositUI()
        let depositTransaction2 = SolidDepositTransaction(ui: depositUI)
        depositTransaction2.execute()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


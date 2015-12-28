//
//  AppDelegate.swift
//  FKUber
//
//  Created by 冯凯 on 15/12/28.
//  Copyright © 2015年 冯凯. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{

    var window: UIWindow?
    

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool
    {
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        showGuidePage()
        return true
    }
    func showGuidePage()
    {
       
        let page = GuidePage()
        self.window?.rootViewController = page
        self.window?.makeKeyAndVisible()
    }
    func applicationWillResignActive(application: UIApplication)
    {

    }

    func applicationDidEnterBackground(application: UIApplication)
    {

    }

    func applicationWillEnterForeground(application: UIApplication)
    {

    }

    func applicationDidBecomeActive(application: UIApplication)
    {

    }

    func applicationWillTerminate(application: UIApplication)
    {

    }


}


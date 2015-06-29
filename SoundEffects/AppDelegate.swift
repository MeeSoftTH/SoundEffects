//
//  AppDelegate.swift
//  SoundEffect
//
//  Created by Pawarit Bunrith on 5/18/2558 BE.
//  Copyright (c) 2558 Pawarit Bunrith. All rights reserved.
//

import UIKit
import AudioToolbox

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        var navigationBarAppearace = UINavigationBar.appearance()
        
        navigationBarAppearace.tintColor = UIColor.blackColor()
        navigationBarAppearace.barTintColor = UIColor.orangeColor()
        
        // change navigation item title color
        navigationBarAppearace.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.blackColor()]
        
        //UIBarButtonItem.appearance().tintColor = UIColor.blackColor()
        
        var pageControl = UIPageControl.appearance()
        pageControl.pageIndicatorTintColor = UIColor.orangeColor()
        pageControl.currentPageIndicatorTintColor = UIColor.grayColor()
        pageControl.backgroundColor = UIColor.whiteColor()
        
        self.window!.backgroundColor = UIColor.whiteColor()
        
        AppSetting().defindSetting()
        
        return true
    }
    
    
    
    func applicationWillResignActive(application: UIApplication) {
        
       
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
    
    
    func application(application: UIApplication, handleWatchKitExtensionRequest userInfo: [NSObject : AnyObject]?, reply: (([NSObject : AnyObject]!) -> Void)!) {
        
        println("Alert")
        AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
        
    }
}


//
//  AppAndDataSetting.swift
//  SoundEffects
//
//  Created by Pawarit_Bunrith on 6/16/2558 BE.
//  Copyright (c) 2558 Pawarit_Bunrith. All rights reserved.
//

import UIKit
import AVFoundation

// This class for defind data source and path!!!!!

class DataSettingAndShare {
    
    struct MyDefaultVariables {
        static var isAddItem:Bool! = false
        static var itemIndex: Int! = 0
        static var categoryIndex: Int = 0
        
        
        
        static var key: String?
        static var dicinary: NSDictionary?
    }
    
    
    func defindSetting() {
        
        let userDefaultSetting: NSUserDefaults! = NSUserDefaults(suiteName: "group.th.co.meesoft.soundeffect")
        
        //println("Defind Path")
        
        
        if let isFirstTimeDone = userDefaultSetting.boolForKey("isdonefirsttime") as Bool? {
            
            if !isFirstTimeDone {
                
                userDefaultSetting.setBool(true, forKey: "isdonefirsttime")
                
                
                let isPurchased = userDefaultSetting.boolForKey("isPurchased") as Bool?
            }
        }
    }
}

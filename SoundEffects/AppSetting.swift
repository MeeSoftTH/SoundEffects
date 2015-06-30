//
//  AppAndDataSetting.swift
//  SoundEffects
//
//  Created by Pawarit_Bunrith on 6/16/2558 BE.
//  Copyright (c) 2558 Pawarit_Bunrith. All rights reserved.
//

import UIKit

// This class for defind data source and path!!!!!

class AppSetting {
    
    struct defaultVar {
        static var isAddItem:Bool! = false
        static var addIndex:Int! = 0
        static var controller: SelectItemProtocol! = nil
        static let isTest:Bool = true
    }
    
    
    func defindSetting() {
        
        let userDefaultSetting: NSUserDefaults! = NSUserDefaults(suiteName: "group.th.co.meesoft.soundeffect")
        
        //println("Defind Path")
        
        var isPurchased = userDefaultSetting.boolForKey("ispurchased") as Bool?
        
        
        if let isFirstTimeDone = userDefaultSetting.boolForKey("isdonefirsttime") as Bool? {
            
            if !isFirstTimeDone {
                userDefaultSetting.setBool(true, forKey: "isdonefirsttime")
            }
        }
    }
}

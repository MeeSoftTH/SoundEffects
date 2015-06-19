//
//  AppAndDataSetting.swift
//  SoundEffects
//
//  Created by Pawarit_Bunrith on 6/16/2558 BE.
//  Copyright (c) 2558 Pawarit_Bunrith. All rights reserved.
//

import UIKit

// This class for defind data source and path!!!!!

class DataSettingAndShare {
    
    struct MyDefaultVariables {
        static var isAddItem:Bool! = false
        static var itemIndex: Int! = 0
        static var categoryIndex: Int = 0
    }
    
    func defindSetting() {
        
        let userDefaultSetting: NSUserDefaults! = NSUserDefaults(suiteName: "group.th.co.meesoft.soundeffect")
        
        println("Defind Path")
        
        
        if let isFirstTimeDone = userDefaultSetting.boolForKey("isdonefirsttime") as Bool? {
            
            if !isFirstTimeDone {
                
                userDefaultSetting.setBool(true, forKey: "isdonefirsttime")
                
                // Defind sounds url
                let sound_defind1: String = "baby1"
                let imgUrl_defind1: String = "analytics"
                userDefaultSetting.setObject([sound_defind1, imgUrl_defind1], forKey: "sound1")
                
                let sound_defind2: String = "baby2"
                let imgUrl_defind2: String = "box"
                userDefaultSetting.setObject([sound_defind2, imgUrl_defind2], forKey: "sound2")
                
                let sound_defind3: String = "baby3"
                let imgUrl_defind3: String = "Briefcase"
                userDefaultSetting.setObject([sound_defind3, imgUrl_defind3], forKey: "sound3")
                
                let sound_defind4: String = "baby4"
                let imgUrl_defind4: String = "browser"
                userDefaultSetting.setObject([sound_defind4, imgUrl_defind4], forKey: "sound4")
                
                let sound_defind5: String = "baby5"
                let imgUrl_defind5: String = "bubbles"
                userDefaultSetting.setObject([sound_defind5, imgUrl_defind5], forKey: "sound5")
                
                let sound_defind6: String = "baby6"
                let imgUrl_defind6: String = "clock"
                userDefaultSetting.setObject([sound_defind6, imgUrl_defind6], forKey: "sound6")
                
                let sound_defind7: String = "baby7"
                let imgUrl_defind7: String = "diamond"
                userDefaultSetting.setObject([sound_defind7, imgUrl_defind7], forKey: "sound7")
                
                let sound_defind8: String = "baby8"
                let imgUrl_defind8: String = "graph"
                userDefaultSetting.setObject([sound_defind8, imgUrl_defind8], forKey: "sound8")
                
                let sound_defind9: String = "baby9"
                let imgUrl_defind9: String = "imac"
                userDefaultSetting.setObject([sound_defind9, imgUrl_defind9], forKey: "sound9")
                
                let sound_defind10: String = "baby10"
                let imgUrl_defind10: String = "joypad"
                userDefaultSetting.setObject([sound_defind10, imgUrl_defind10], forKey: "sound10")
                
                let sound_defind11: String = "baby11"
                let imgUrl_defind11: String = "keyboards"
                userDefaultSetting.setObject([sound_defind11, imgUrl_defind11], forKey: "sound11")
                
                let sound_defind12: String = "baby12"
                let imgUrl_defind12: String = "map"
                userDefaultSetting.setObject([sound_defind12, imgUrl_defind12], forKey: "sound12")
                
                let sound_defind13: String = "baby13"
                let imgUrl_defind13: String = "open-box"
                userDefaultSetting.setObject([sound_defind13, imgUrl_defind13], forKey: "sound13")
                
                let sound_defind14: String = "baby14"
                let imgUrl_defind14: String = "package"
                userDefaultSetting.setObject([sound_defind14, imgUrl_defind14], forKey: "sound14")
                
                let sound_defind15: String = "baby15"
                let imgUrl_defind15: String = "settings"
                userDefaultSetting.setObject([sound_defind15, imgUrl_defind15], forKey: "sound15")
                
                let sound_defind16: String = "baby16"
                let imgUrl_defind16: String = "speakers"
                userDefaultSetting.setObject([sound_defind16, imgUrl_defind16], forKey: "sound16")
                
                let sound_defind17: String = "baby17"
                let imgUrl_defind17: String = "target"
                userDefaultSetting.setObject([sound_defind17, imgUrl_defind17], forKey: "sound17")
                
                let sound_defind18: String = "baby18"
                let imgUrl_defind18: String = "wine"
                userDefaultSetting.setObject([sound_defind18, imgUrl_defind18], forKey: "sound18")
                
                
               
                
                
                let isPurchased = userDefaultSetting.boolForKey("isPurchased") as Bool?
            }
        }
    }
}

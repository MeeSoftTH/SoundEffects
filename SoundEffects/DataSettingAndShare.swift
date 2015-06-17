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
    }
    
    func defindSetting() {
        
        let userDefaultSetting: NSUserDefaults! = NSUserDefaults(suiteName: "group.th.co.meesoft.soundeffect")
        
        println("Defind Path")
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
        
        
        // Slot watch defind
        
        let sound_slot1: String = ""
        let imgUrl_slot1: String = ""
        userDefaultSetting.setObject([sound_slot1, imgUrl_slot1], forKey: "slot1")
        
        let sound_slot2: String = ""
        let imgUrl_slot2: String = ""
        userDefaultSetting.setObject([sound_slot2, imgUrl_slot2], forKey: "slot2")
        
        let sound_slot3: String = ""
        let imgUrl_slot3: String = ""
        userDefaultSetting.setObject([sound_slot3, imgUrl_slot3], forKey: "slot3")
        
        let sound_slot4: String = ""
        let imgUrl_slot4: String = ""
        userDefaultSetting.setObject([sound_slot4, imgUrl_slot4], forKey: "slot4")
        
        let sound_slot5: String = ""
        let imgUrl_slot5: String = ""
        userDefaultSetting.setObject([sound_slot5, imgUrl_slot5], forKey: "slot5")
        
        let sound_slot6: String = ""
        let imgUrl_slot6: String = ""
        userDefaultSetting.setObject([sound_slot6, imgUrl_slot6], forKey: "slot6")
        
        let sound_slot7: String = ""
        let imgUrl_slot7: String = ""
        userDefaultSetting.setObject([sound_slot7, imgUrl_slot7], forKey: "slot7")
        
        let sound_slot8: String = ""
        let imgUrl_slot8: String = ""
        userDefaultSetting.setObject([sound_slot8, imgUrl_slot8], forKey: "slot8")
        
        let sound_slot9: String = ""
        let imgUrl_slot9: String = ""
        userDefaultSetting.setObject([sound_slot9, imgUrl_slot9], forKey: "slot9")
        
        let sound_slot10: String = ""
        let imgUrl_slot10: String = ""
        userDefaultSetting.setObject([sound_slot10, imgUrl_slot10], forKey: "slot10")
        
        let sound_slot11: String = ""
        let imgUrl_slot11: String = ""
        userDefaultSetting.setObject([sound_slot11, imgUrl_slot11], forKey: "slot11")
        
        let sound_slot12: String = ""
        let imgUrl_slot12: String = ""
        userDefaultSetting.setObject([sound_slot12, imgUrl_slot12], forKey: "slot12")
        
        let sound_slot13: String = ""
        let imgUrl_slot13: String = ""
        userDefaultSetting.setObject([sound_slot13, imgUrl_slot13], forKey: "slot13")
        
        let sound_slot14: String = ""
        let imgUrl_slot14: String = ""
        userDefaultSetting.setObject([sound_slot14, imgUrl_slot14], forKey: "slot14")
        
        let sound_slot15: String = ""
        let imgUrl_slot15: String = ""
        userDefaultSetting.setObject([sound_slot15, imgUrl_slot15], forKey: "slot15")
        
        let sound_slot16: String = ""
        let imgUrl_slot16: String = ""
        userDefaultSetting.setObject([sound_slot16, imgUrl_slot16], forKey: "slot16")
        
        
        let isPurchased = userDefaultSetting.boolForKey("isPurchased") as Bool?
    }
}

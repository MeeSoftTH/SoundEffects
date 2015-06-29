//
//  InterfaceController.swift
//  SoundEffects WatchKit Extension
//
//  Created by Pawarit_Bunrith on 6/5/2558 BE.
//  Copyright (c) 2558 Pawarit_Bunrith. All rights reserved.
//

import WatchKit
import Foundation
import AVFoundation

class InterfaceController: WKInterfaceController {
    
    
    @IBOutlet weak var lockView2: WKInterfaceGroup?
    @IBOutlet weak var buttonView2: WKInterfaceGroup?
    
    @IBOutlet weak var lockView3: WKInterfaceGroup?
    @IBOutlet weak var buttonView3: WKInterfaceGroup?
    
    @IBOutlet weak var lockView4: WKInterfaceGroup?
    @IBOutlet weak var buttonView4: WKInterfaceGroup?
    
    
    @IBOutlet weak var button1: WKInterfaceButton!
    @IBOutlet weak var button2: WKInterfaceButton!
    @IBOutlet weak var button3: WKInterfaceButton!
    @IBOutlet weak var button4: WKInterfaceButton!
    
    @IBOutlet weak var button5: WKInterfaceButton!
    @IBOutlet weak var button6: WKInterfaceButton!
    @IBOutlet weak var button7: WKInterfaceButton!
    @IBOutlet weak var button8: WKInterfaceButton!
    
    @IBOutlet weak var button9: WKInterfaceButton!
    @IBOutlet weak var button10: WKInterfaceButton!
    @IBOutlet weak var button11: WKInterfaceButton!
    @IBOutlet weak var button12: WKInterfaceButton!
    
    @IBOutlet weak var button13: WKInterfaceButton!
    @IBOutlet weak var button14: WKInterfaceButton!
    @IBOutlet weak var button15: WKInterfaceButton!
    @IBOutlet weak var button16: WKInterfaceButton!
    
    
    var ActionSound1: String!
    var ActionSound2: String!
    var ActionSound3: String!
    var ActionSound4: String!
    
    var ActionSound5: String!
    var ActionSound6: String!
    var ActionSound7: String!
    var ActionSound8: String!
    
    var ActionSound9: String!
    var ActionSound10: String!
    var ActionSound11: String!
    var ActionSound12: String!
    
    var ActionSound13: String!
    var ActionSound14: String!
    var ActionSound15: String!
    var ActionSound16: String!
    
    
    var isVibration1: Bool! = false
    var isVibration2: Bool! = false
    var isVibration3: Bool! = false
    var isVibration4: Bool! = false
    
    var isVibration5: Bool! = false
    var isVibration6: Bool! = false
    var isVibration7: Bool! = false
    var isVibration8: Bool! = false
    
    var isVibration9: Bool! = false
    var isVibration10: Bool! = false
    var isVibration11: Bool! = false
    var isVibration12: Bool! = false
    
    var isVibration13: Bool! = false
    var isVibration14: Bool! = false
    var isVibration15: Bool! = false
    var isVibration16: Bool! = false
    
    
    
    var soundPlayer = AVAudioPlayer()
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        updateData()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        updateData()
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func Action1() {
        soundPlayer(ActionSound1, isVibration: isVibration1)
    }
    
    @IBAction func Action2() {
        soundPlayer(ActionSound2, isVibration: isVibration2)
    }
    
    @IBAction func Action3() {
        soundPlayer(ActionSound3, isVibration: isVibration3)
    }
    
    @IBAction func Action4() {
        soundPlayer(ActionSound4, isVibration: isVibration4)
    }
    
    @IBAction func Action5() {
        soundPlayer(ActionSound5, isVibration: isVibration5)
    }
    
    @IBAction func Action6() {
        soundPlayer(ActionSound6, isVibration: isVibration6)
    }
    
    @IBAction func Action7() {
        soundPlayer(ActionSound7, isVibration: isVibration7)
    }
    
    @IBAction func Action8() {
        soundPlayer(ActionSound8, isVibration: isVibration8)
    }
    
    @IBAction func Action9() {
        soundPlayer(ActionSound9, isVibration: isVibration9)
    }
    
    @IBAction func Action10() {
        soundPlayer(ActionSound10, isVibration: isVibration10)
    }
    
    @IBAction func Action11() {
        soundPlayer(ActionSound11, isVibration: isVibration11)
    }
    
    @IBAction func Action12() {
        soundPlayer(ActionSound12, isVibration: isVibration12)
    }
    
    @IBAction func Action13() {
        soundPlayer(ActionSound13, isVibration: isVibration13)
    }
    
    @IBAction func Action14() {
        soundPlayer(ActionSound14, isVibration: isVibration14)
    }
    
    @IBAction func Action15() {
        soundPlayer(ActionSound15, isVibration: isVibration15)
    }
    
    @IBAction func Action16() {
        soundPlayer(ActionSound16, isVibration: isVibration16)
    }
    
    @IBAction func refresh() {
        updateData()
    }
    
    
    func soundPlayer(audioPath: String, isVibration: Bool) {
        
        let path = NSBundle.mainBundle().URLForResource(audioPath, withExtension: "mp3")!
        
        soundPlayer = AVAudioPlayer(contentsOfURL: path, error: nil)
        //soundPlayer.stop()
        soundPlayer.prepareToPlay()
        soundPlayer.volume = 1.0
        soundPlayer.play()
        println(path)
        
        if isVibration == true {
            AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
            //sendMessageToParentAppWithString("isVibrate")
            }
        }
    
    func updateData() {
        let userDefind: NSUserDefaults! = NSUserDefaults(suiteName: "group.th.co.meesoft.soundeffect")
        
        let isPurchased = userDefind?.boolForKey("ispurchased") as Bool?
        
        //println("Update UI")
        
        let slotPath1: AnyObject? = userDefind?.objectForKey("slot1")
        if slotPath1 != nil {
            var slot1 = slotPath1 as! NSArray
            var slotPath1 = slot1.objectAtIndex(0) as! NSString
            ActionSound1 = slotPath1 as String
            var slotImage1 = slot1.objectAtIndex(1) as! NSString
            button1?.setBackgroundImageNamed(slotImage1 as String)
            button1?.setEnabled(true)
            
            if let isVibrate = slot1.objectAtIndex(2) as? Bool {
                if isVibrate == true {
                    self.isVibration1 = true
                }
            }
        }
        
        let slotPath2: AnyObject? = userDefind?.objectForKey("slot2")
        if slotPath2 != nil {
            var slot2 = slotPath2 as! NSArray
            var slotPath2 = slot2.objectAtIndex(0) as! NSString
            ActionSound2 = slotPath2 as String
            var slotImage2 = slot2.objectAtIndex(1) as! NSString
            button2?.setBackgroundImageNamed(slotImage2 as String)
            button2?.setEnabled(true)
            
            if let isVibrate = slot2.objectAtIndex(2) as? Bool {
                if isVibrate == true {
                    self.isVibration2 = true
                }
            }
            
        }
        
        let slotPath3: AnyObject? = userDefind?.objectForKey("slot3")
        if slotPath3 != nil {
            var slot3 = slotPath3 as! NSArray
            var slotPath3 = slot3.objectAtIndex(0) as! NSString
            ActionSound3 = slotPath3 as String
            var slotImage3 = slot3.objectAtIndex(1) as! NSString
            button3?.setBackgroundImageNamed(slotImage3 as String)
            button3?.setEnabled(true)
            
            if let isVibrate = slot3.objectAtIndex(2) as? Bool {
                if isVibrate == true {
                    self.isVibration3 = true
                }
            }
        }
        
        let slotPath4: AnyObject? = userDefind?.objectForKey("slot4")
        if slotPath4 != nil {
            var slot4 = slotPath4 as! NSArray
            var slotPath4 = slot4.objectAtIndex(0) as! NSString
            ActionSound4 = slotPath4 as String
            var slotImage4 = slot4.objectAtIndex(1) as! NSString
            button4?.setBackgroundImageNamed(slotImage4 as String)
            button4?.setEnabled(true)
            
            if let isVibrate = slot4.objectAtIndex(2) as? Bool {
                if isVibrate == true {
                    self.isVibration4 = true
                }
            }
            
        }
        
        
        if isPurchased == true {
            
            lockView2?.setHidden(true)
            lockView3?.setHidden(true)
            lockView3?.setHidden(true)
            
            buttonView2?.setHidden(false)
            buttonView3?.setHidden(false)
            buttonView4?.setHidden(false)
            
            
            let slotPath5: AnyObject? = userDefind?.objectForKey("slot5")
            if slotPath5 != nil {
                var slot5 = slotPath5 as! NSArray
                var slotPath5 = slot5.objectAtIndex(0) as! NSString
                ActionSound5 = slotPath5 as String
                var slotImage5 = slot5.objectAtIndex(1) as! NSString
                button5?.setBackgroundImageNamed(slotImage5 as String)
                button5?.setEnabled(true)
                
                if let isVibrate = slot5.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration5 = true
                    }
                }
                
            }
            
            let slotPath6: AnyObject? = userDefind?.objectForKey("slot6")
            if slotPath6 != nil {
                var slot6 = slotPath6 as! NSArray
                var slotPath6 = slot6.objectAtIndex(0) as! NSString
                ActionSound6 = slotPath6 as String
                var slotImage6 = slot6.objectAtIndex(1) as! NSString
                button6?.setBackgroundImageNamed(slotImage6 as String)
                button6?.setEnabled(true)
                
                if let isVibrate = slot6.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration6 = true
                    }
                }
                
            }
            
            let slotPath7: AnyObject? = userDefind?.objectForKey("slot7")
            if slotPath7 != nil {
                var slot7 = slotPath7 as! NSArray
                var slotPath7 = slot7.objectAtIndex(0) as! NSString
                ActionSound7 = slotPath7 as String
                var slotImage7 = slot7.objectAtIndex(1) as! NSString
                button7?.setBackgroundImageNamed(slotImage7 as String)
                button7?.setEnabled(true)
                
                if let isVibrate = slot7.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration7 = true
                    }
                }
                
            }
            
            let slotPath8: AnyObject? = userDefind?.objectForKey("slot8")
            if slotPath8 != nil {
                var slot8 = slotPath8 as! NSArray
                var slotPath8 = slot8.objectAtIndex(0) as! NSString
                ActionSound8 = slotPath8 as String
                var slotImage8 = slot8.objectAtIndex(1) as! NSString
                button8?.setBackgroundImageNamed(slotImage8 as String)
                button8?.setEnabled(true)
                
                if let isVibrate = slot8.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration8 = true
                    }
                }
                
            }
            
            let slotPath9: AnyObject? = userDefind?.objectForKey("slot9")
            if slotPath9 != nil {
                var slot9 = slotPath9 as! NSArray
                var slotPath9 = slot9.objectAtIndex(0) as! NSString
                ActionSound9 = slotPath9 as String
                var slotImage9 = slot9.objectAtIndex(1) as! NSString
                button9?.setBackgroundImageNamed(slotImage9 as String)
                button9?.setEnabled(true)
                
                if let isVibrate = slot9.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration9 = true
                    }
                }
                
            }
            
            let slotPath10: AnyObject? = userDefind?.objectForKey("slot10")
            if slotPath10 != nil {
                var slot10 = slotPath10 as! NSArray
                var slotPath10 = slot10.objectAtIndex(0) as! NSString
                ActionSound10 = slotPath10 as String
                var slotImage10 = slot10.objectAtIndex(1) as! NSString
                button10?.setBackgroundImageNamed(slotImage10 as String)
                button10?.setEnabled(true)
                
                if let isVibrate = slot10.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration10 = true
                    }
                }
                
            }
            
            let slotPath11: AnyObject? = userDefind?.objectForKey("slot11")
            if slotPath11 != nil {
                var slot11 = slotPath11 as! NSArray
                var slotPath11 = slot11.objectAtIndex(0) as! NSString
                ActionSound11 = slotPath11 as String
                var slotImage11 = slot11.objectAtIndex(1) as! NSString
                button11?.setBackgroundImageNamed(slotImage11 as String)
                button11?.setEnabled(true)
                
                if let isVibrate = slot11.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration11 = true
                    }
                }
                
            }
            
            let slotPath12: AnyObject? = userDefind?.objectForKey("slot12")
            if slotPath12 != nil {
                var slot12 = slotPath12 as! NSArray
                var slotPath12 = slot12.objectAtIndex(0) as! NSString
                ActionSound12 = slotPath12 as String
                var slotImage12 = slot12.objectAtIndex(1) as! NSString
                button12?.setBackgroundImageNamed(slotImage12 as String)
                button12?.setEnabled(true)
                
                if let isVibrate = slot12.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration12 = true
                    }
                }
                
            }
            
            let slotPath13: AnyObject? = userDefind?.objectForKey("slot13")
            if slotPath13 != nil {
                var slot13 = slotPath13 as! NSArray
                var slotPath13 = slot13.objectAtIndex(0) as! NSString
                ActionSound13 = slotPath13 as String
                var slotImage13 = slot13.objectAtIndex(1) as! NSString
                button13?.setBackgroundImageNamed(slotImage13 as String)
                button13?.setEnabled(true)
                
                if let isVibrate = slot13.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration13 = true
                    }
                }
            }
            
            let slotPath14: AnyObject? = userDefind?.objectForKey("slot14")
            if slotPath14 != nil {
                var slot14 = slotPath14 as! NSArray
                var slotPath14 = slot14.objectAtIndex(0) as! NSString
                ActionSound14 = slotPath14 as String
                var slotImage14 = slot14.objectAtIndex(1) as! NSString
                button14?.setBackgroundImageNamed(slotImage14 as String)
                button14?.setEnabled(true)
                
                if let isVibrate = slot14.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration14 = true
                    }
                }
            }
            
            let slotPath15: AnyObject? = userDefind?.objectForKey("slot15")
            if slotPath15 != nil {
                var slot15 = slotPath15 as! NSArray
                var slotPath15 = slot15.objectAtIndex(0) as! NSString
                ActionSound15 = slotPath15 as String
                var slotImage15 = slot15.objectAtIndex(1) as! NSString
                button15?.setBackgroundImageNamed(slotImage15 as String)
                button15?.setEnabled(true)
                
                if let isVibrate = slot15.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration15 = true
                    }
                }
            }
            
            let slotPath16: AnyObject? = userDefind?.objectForKey("slot16")
            if slotPath16 != nil {
                var slot16 = slotPath16 as! NSArray
                var slotPath16 = slot16.objectAtIndex(0) as! NSString
                ActionSound16 = slotPath16 as String
                var slotImage16 = slot16.objectAtIndex(1) as! NSString
                button16?.setBackgroundImageNamed(slotImage16 as String)
                button16?.setEnabled(true)
                
                if let isVibrate = slot16.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration16 = true
                    }
                }
            }
            
        }else {
            lockView2?.setHidden(false)
            lockView3?.setHidden(false)
            lockView3?.setHidden(false)
            
            buttonView2?.setHidden(true)
            buttonView3?.setHidden(true)
            buttonView4?.setHidden(true)
            
        }
    }
    
    func sendMessageToParentAppWithString(messageText: String) {
        var isVibrate = ["vibrate": true]
        WKInterfaceController.openParentApplication(isVibrate,
            reply: { [unowned self](reply, error) -> Void in
                
                
            })
    }
}

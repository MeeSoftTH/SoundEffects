//
//  WatchItemViewController1.swift
//  SoundEffects
//
//  Created by Pawarit_Bunrith on 6/17/2558 BE.
//  Copyright (c) 2558 Pawarit_Bunrith. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class WatchItemViewController: UIViewController, SelectItemProtocol {
    
    let userDefind: NSUserDefaults! = NSUserDefaults(suiteName: "group.th.co.meesoft.soundeffect")
    
    var isPurchase: Bool!
    
    let defaultImage = "defaultIcon"
    
    var soundPlayer = AVAudioPlayer()
    
    var index: Int = 0
    
    
    
    @IBOutlet weak var label2: UILabel?
    @IBOutlet weak var label3: UILabel?
    @IBOutlet weak var label4: UILabel?
    
    
    // Page1
    @IBOutlet weak var watchImg1: UIButton?
    @IBOutlet weak var watchImg2: UIButton?
    @IBOutlet weak var watchImg3: UIButton?
    @IBOutlet weak var watchImg4: UIButton?
    
    @IBOutlet weak var watchImg5: UIButton?
    @IBOutlet weak var watchImg6: UIButton?
    @IBOutlet weak var watchImg7: UIButton?
    @IBOutlet weak var watchImg8: UIButton?
    
    @IBOutlet weak var watchImg9: UIButton?
    @IBOutlet weak var watchImg10: UIButton?
    @IBOutlet weak var watchImg11: UIButton?
    @IBOutlet weak var watchImg12: UIButton?
    
    @IBOutlet weak var watchImg13: UIButton?
    @IBOutlet weak var watchImg14: UIButton?
    @IBOutlet weak var watchImg15: UIButton?
    @IBOutlet weak var watchImg16: UIButton?
    
    // Page1
    var watchAudio1 =  String()
    var watchAudio2 =  String()
    var watchAudio3 =  String()
    var watchAudio4 =  String()
    
    var watchAudio5 =  String()
    var watchAudio6 =  String()
    var watchAudio7 =  String()
    var watchAudio8 =  String()
    
    var watchAudio9 =  String()
    var watchAudio10 =  String()
    var watchAudio11 =  String()
    var watchAudio12 =  String()
    
    var watchAudio13 =  String()
    var watchAudio14 =  String()
    var watchAudio15 =  String()
    var watchAudio16 =  String()
    
    // Page1
    var hasOptions1 = false
    var hasOptions2 = false
    var hasOptions3 = false
    var hasOptions4 = false
    
    var hasOptions5 = false
    var hasOptions6 = false
    var hasOptions7 = false
    var hasOptions8 = false
    
    var hasOptions9 = false
    var hasOptions10 = false
    var hasOptions11 = false
    var hasOptions12 = false
    
    var hasOptions13 = false
    var hasOptions14 = false
    var hasOptions15 = false
    var hasOptions16 = false
    
    
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        isPurchase = userDefind!.boolForKey("ispurchased") as Bool?
        
        println("This full version = \(isPurchase)")
        updateUIPage()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Action1(sender: UIButton) {
        self.index = 1
        if hasOptions1 {showDialog(watchAudio1, isVibration: isVibration1)}else {openAddItemView()}
    }
    
    @IBAction func Action2(sender: UIButton) {
        self.index = 2
        if hasOptions2 {showDialog(watchAudio2, isVibration: isVibration2)}else {openAddItemView()}
    }
    
    @IBAction func Action3(sender: UIButton) {
        self.index = 3
        if hasOptions3 {showDialog(watchAudio3, isVibration: isVibration3)}else {openAddItemView()}
        
    }
    
    @IBAction func Action4(sender: UIButton) {
        self.index = 4
        if hasOptions4 {showDialog(watchAudio4, isVibration: isVibration4)}else {openAddItemView()}
    }
    
    @IBAction func Action5(sender: UIButton) {
        self.index = 5
        if hasOptions5 {showDialog(watchAudio5, isVibration: isVibration5)}else {openAddItemView()}
    }
    
    @IBAction func Action6(sender: UIButton) {
        self.index = 6
        if hasOptions6 {showDialog(watchAudio6, isVibration: isVibration6)}else {openAddItemView()}
    }
    
    @IBAction func Action7(sender: UIButton) {
        self.index = 7
        if hasOptions7 {showDialog(watchAudio7, isVibration: isVibration7)}else {openAddItemView()}
        
    }
    
    @IBAction func Action8(sender: UIButton) {
        self.index = 8
        if hasOptions8 {showDialog(watchAudio8, isVibration: isVibration8)}else {openAddItemView()}
    }
    
    @IBAction func Action9(sender: UIButton) {
        self.index = 9
        if hasOptions9 {showDialog(watchAudio9, isVibration: isVibration9)}else {openAddItemView()}
    }
    
    @IBAction func Action10(sender: UIButton) {
        self.index = 10
        if hasOptions10 {showDialog(watchAudio10, isVibration: isVibration10)}else {openAddItemView()}
    }
    
    @IBAction func Action11(sender: UIButton) {
        self.index = 11
        if hasOptions11 {showDialog(watchAudio11, isVibration: isVibration11)}else {openAddItemView()}
        
    }
    
    @IBAction func Action12(sender: UIButton) {
        self.index = 12
        if hasOptions12 {showDialog(watchAudio12, isVibration: isVibration12)}else {openAddItemView()}
    }
    
    @IBAction func Action13(sender: UIButton) {
        self.index = 13
        if hasOptions13 {showDialog(watchAudio13, isVibration: isVibration13)}else {openAddItemView()}
    }
    
    @IBAction func Action14(sender: UIButton) {
        self.index = 14
        if hasOptions14 {showDialog(watchAudio14, isVibration: isVibration14)}else {openAddItemView()}
    }
    
    @IBAction func Action15(sender: UIButton) {
        self.index = 15
        if hasOptions15 {showDialog(watchAudio15, isVibration: isVibration15)}else {openAddItemView()}
        
    }
    
    @IBAction func Action16(sender: UIButton) {
        self.index = 16
        if hasOptions16 {showDialog(watchAudio16, isVibration: isVibration16)}else {openAddItemView()}
    }
    
    func openAddItemView() {
        
        AppSetting.defaultVar.isAddItem = true
        
        AppSetting.defaultVar.addIndex = self.index
        
        let pageViewController = self.storyboard!.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        
        AppSetting.defaultVar.controller = self
        
        self.navigationController!.pushViewController(pageViewController, animated: true)
        
    }
    
    func showDialog(path: String, isVibration: Bool){
        var chooseDialog = UIAlertController(title: "Options", message: "Choose or play audio ?",preferredStyle: UIAlertControllerStyle.ActionSheet
        )
        
        chooseDialog.addAction(UIAlertAction(title: "Choose audio", style: .Default, handler: { (action: UIAlertAction!) in
            self.openAddItemView()
        }))
        
        chooseDialog.addAction(UIAlertAction(title: "Play", style: .Default, handler: { (action: UIAlertAction!) in
            self.soundPlayer(path, isVibration: isVibration)
            
        }))
        
        chooseDialog.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        
        presentViewController(chooseDialog, animated: true, completion: nil)
    }
    
    func soundPlayer(path: String, isVibration: Bool) {
        let resourcePath = NSBundle.mainBundle().URLForResource(path, withExtension: "mp3")!
        
        soundPlayer = AVAudioPlayer(contentsOfURL: resourcePath, error: nil)
        soundPlayer.stop()
        soundPlayer.prepareToPlay()
        soundPlayer.volume = 1.0
        soundPlayer.play()
        
        if isVibration == true {
            print("Is Vibrate")
            AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
        }
        println(path)
    }
    
    func updateUIPage() {
        
        println("Update UI")
        let slotPath1: AnyObject? = userDefind?.objectForKey("slot1")
        if slotPath1 != nil {
            hasOptions1 = true
            var slot1 = slotPath1 as! NSArray
            var slotPath1 = slot1.objectAtIndex(0) as! NSString
            watchAudio1 = slotPath1 as String
            var slotImage1 = slot1.objectAtIndex(1) as! NSString
            
            watchImg1?.setImage(UIImage(named: slotImage1 as String), forState: UIControlState.Normal)
            
            
            if let isVibrate = slot1.objectAtIndex(2) as? Bool {
                if isVibrate == true {
                    self.isVibration1 = true
                }
            }
        }
        
        let slotPath2: AnyObject? = userDefind?.objectForKey("slot2")
        if slotPath2 != nil {
            hasOptions2 = true
            var slot2 = slotPath2 as! NSArray
            var slotPath2 = slot2.objectAtIndex(0) as! NSString
            watchAudio2 = slotPath2 as String
            var slotImage2 = slot2.objectAtIndex(1) as! NSString
            
            watchImg2?.setImage(UIImage(named: slotImage2 as String), forState: UIControlState.Normal)
            
            if let isVibrate = slot2.objectAtIndex(2) as? Bool {
                if isVibrate == true {
                    self.isVibration2 = true
                }
            }
        }
        
        let slotPath3: AnyObject? = userDefind?.objectForKey("slot3")
        if slotPath3 != nil {
            hasOptions3 = true
            var slot3 = slotPath3 as! NSArray
            var slotPath3 = slot3.objectAtIndex(0) as! NSString
            watchAudio3 = slotPath3 as String
            var slotImage3 = slot3.objectAtIndex(1) as! NSString
            
            watchImg3?.setImage(UIImage(named: slotImage3 as String), forState: UIControlState.Normal)
            
            if let isVibrate = slot3.objectAtIndex(2) as? Bool {
                if isVibrate == true {
                    self.isVibration3 = true
                }
            }
        }
        
        let slotPath4: AnyObject? = userDefind?.objectForKey("slot4")
        if slotPath4 != nil {
            hasOptions4 = true
            var slot4 = slotPath4 as! NSArray
            var slotPath4 = slot4.objectAtIndex(0) as! NSString
            watchAudio4 = slotPath4 as String
            var slotImage4 = slot4.objectAtIndex(1) as! NSString
            
            watchImg4?.setImage(UIImage(named: slotImage4 as String), forState: UIControlState.Normal)
            
            if let isVibrate = slot4.objectAtIndex(2) as? Bool {
                if isVibrate == true {
                    self.isVibration4 = true
                }
            }
        }
        
        if self.isPurchase == true {
            
            label2?.text = "Remote Play require Apple Watch as remote. All of this setting will present in your Apple Watch"
            
            label3?.text = "Remote Play require Apple Watch as remote. All of this setting will present in your Apple Watch"
            
            label4?.text = "Remote Play require Apple Watch as remote. All of this setting will present in your Apple Watch"
            
            let unlockImage: String = "add_icon"
            
            watchImg5?.setImage(UIImage(named: unlockImage as String), forState: UIControlState.Normal)
            watchImg5?.enabled = true
            
            watchImg6?.setImage(UIImage(named: unlockImage as String), forState: UIControlState.Normal)
            watchImg6?.enabled = true

            
            watchImg7?.setImage(UIImage(named: unlockImage as String), forState: UIControlState.Normal)
            watchImg7?.enabled = true

            
            watchImg8?.setImage(UIImage(named: unlockImage as String), forState: UIControlState.Normal)
            watchImg8?.enabled = true

            
            watchImg9?.setImage(UIImage(named: unlockImage as String), forState: UIControlState.Normal)
            watchImg9?.enabled = true

            
            watchImg10?.setImage(UIImage(named: unlockImage as String), forState: UIControlState.Normal)
            watchImg10?.enabled = true

            
            watchImg11?.setImage(UIImage(named: unlockImage as String), forState: UIControlState.Normal)
            watchImg11?.enabled = true

            
            watchImg12?.setImage(UIImage(named: unlockImage as String), forState: UIControlState.Normal)
            watchImg12?.enabled = true

            
            watchImg13?.setImage(UIImage(named: unlockImage as String), forState: UIControlState.Normal)
            watchImg13?.enabled = true

            
            watchImg14?.setImage(UIImage(named: unlockImage as String), forState: UIControlState.Normal)
            watchImg14?.enabled = true

            
            watchImg15?.setImage(UIImage(named: unlockImage as String), forState: UIControlState.Normal)
            watchImg15?.enabled = true

            
            watchImg16?.setImage(UIImage(named: unlockImage as String), forState: UIControlState.Normal)
            watchImg16?.enabled = true

           
            
            let slotPath5: AnyObject? = userDefind?.objectForKey("slot5")
            if slotPath5 != nil {
                hasOptions5 = true
                var slot5 = slotPath5 as! NSArray
                var slotPath5 = slot5.objectAtIndex(0) as! NSString
                watchAudio5 = slotPath5 as String
                var slotImage5 = slot5.objectAtIndex(1) as! NSString
                
                watchImg5?.setImage(UIImage(named: slotImage5 as String), forState: UIControlState.Normal)
                
                if let isVibrate = slot5.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration5 = true
                    }
                }
            }
            
            let slotPath6: AnyObject? = userDefind?.objectForKey("slot6")
            if slotPath6 != nil {
                hasOptions6 = true
                var slot6 = slotPath6 as! NSArray
                var slotPath6 = slot6.objectAtIndex(0) as! NSString
                watchAudio6 = slotPath6 as String
                var slotImage6 = slot6.objectAtIndex(1) as! NSString
                
                watchImg6?.setImage(UIImage(named: slotImage6 as String), forState: UIControlState.Normal)
                
                if let isVibrate = slot6.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration6 = true
                    }
                }
            }
            
            let slotPath7: AnyObject? = userDefind?.objectForKey("slot7")
            if slotPath7 != nil {
                hasOptions7 = true
                var slot7 = slotPath7 as! NSArray
                var slotPath7 = slot7.objectAtIndex(0) as! NSString
                watchAudio7 = slotPath7 as String
                var slotImage7 = slot7.objectAtIndex(1) as! NSString
                
                watchImg7?.setImage(UIImage(named: slotImage7 as String), forState: UIControlState.Normal)
                
                if let isVibrate = slot7.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration7 = true
                    }
                }
            }
            
            let slotPath8: AnyObject? = userDefind?.objectForKey("slot8")
            if slotPath8 != nil {
                hasOptions8 = true
                var slot8 = slotPath8 as! NSArray
                var slotPath8 = slot8.objectAtIndex(0) as! NSString
                watchAudio8 = slotPath8 as String
                var slotImage8 = slot8.objectAtIndex(1) as! NSString
                
                watchImg8?.setImage(UIImage(named: slotImage8 as String), forState: UIControlState.Normal)
                
                if let isVibrate = slot8.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration8 = true
                    }
                }
            }
            
            let slotPath9: AnyObject? = userDefind?.objectForKey("slot9")
            if slotPath9 != nil {
                hasOptions9 = true
                var slot9 = slotPath9 as! NSArray
                var slotPath9 = slot9.objectAtIndex(0) as! NSString
                watchAudio9 = slotPath9 as String
                var slotImage9 = slot9.objectAtIndex(1) as! NSString
                
                watchImg9?.setImage(UIImage(named: slotImage9 as String), forState: UIControlState.Normal)
                
                if let isVibrate = slot9.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration9 = true
                    }
                }
            }
            
            let slotPath10: AnyObject? = userDefind?.objectForKey("slot10")
            if slotPath10 != nil {
                hasOptions10 = true
                var slot10 = slotPath10 as! NSArray
                var slotPath10 = slot10.objectAtIndex(0) as! NSString
                watchAudio10 = slotPath10 as String
                var slotImage10 = slot10.objectAtIndex(1) as! NSString
                
                watchImg10?.setImage(UIImage(named: slotImage10 as String), forState: UIControlState.Normal)
                
                if let isVibrate = slot10.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration10 = true
                    }
                }
            }
            
            let slotPath11: AnyObject? = userDefind?.objectForKey("slot11")
            if slotPath11 != nil {
                hasOptions11 = true
                var slot11 = slotPath11 as! NSArray
                var slotPath11 = slot11.objectAtIndex(0) as! NSString
                watchAudio11 = slotPath11 as String
                var slotImage11 = slot11.objectAtIndex(1) as! NSString
                
                watchImg11?.setImage(UIImage(named: slotImage11 as String), forState: UIControlState.Normal)
                
                if let isVibrate = slot11.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration11 = true
                    }
                }
            }
            
            let slotPath12: AnyObject? = userDefind?.objectForKey("slot12")
            if slotPath12 != nil {
                hasOptions12 = true
                var slot12 = slotPath12 as! NSArray
                var slotPath12 = slot12.objectAtIndex(0) as! NSString
                watchAudio12 = slotPath12 as String
                var slotImage12 = slot12.objectAtIndex(1) as! NSString
                
                watchImg12?.setImage(UIImage(named: slotImage12 as String), forState: UIControlState.Normal)
                
                if let isVibrate = slot12.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration12 = true
                    }
                }
            }
            
            let slotPath13: AnyObject? = userDefind?.objectForKey("slot13")
            if slotPath13 != nil {
                hasOptions13 = true
                var slot13 = slotPath13 as! NSArray
                var slotPath13 = slot13.objectAtIndex(0) as! NSString
                watchAudio13 = slotPath13 as String
                var slotImage13 = slot13.objectAtIndex(1) as! NSString
                
                watchImg13?.setImage(UIImage(named: slotImage13 as String), forState: UIControlState.Normal)
                
                if let isVibrate = slot13.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration13 = true
                        
                    }
                }
            }
            
            let slotPath14: AnyObject? = userDefind?.objectForKey("slot14")
            if slotPath14 != nil {
                hasOptions14 = true
                var slot14 = slotPath14 as! NSArray
                var slotPath14 = slot14.objectAtIndex(0) as! NSString
                watchAudio14 = slotPath14 as String
                var slotImage14 = slot14.objectAtIndex(1) as! NSString
                
                watchImg14?.setImage(UIImage(named: slotImage14 as String), forState: UIControlState.Normal)
                
                if let isVibrate = slot14.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration14 = true
                    }
                }
            }
            
            let slotPath15: AnyObject? = userDefind?.objectForKey("slot15")
            if slotPath15 != nil {
                hasOptions15 = true
                var slot15 = slotPath15 as! NSArray
                var slotPath15 = slot15.objectAtIndex(0) as! NSString
                watchAudio15 = slotPath15 as String
                var slotImage15 = slot15.objectAtIndex(1) as! NSString
                
                watchImg15?.setImage(UIImage(named: slotImage15 as String), forState: UIControlState.Normal)
                
                if let isVibrate = slot15.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration15 = true
                    }
                }
            }
            
            let slotPath16: AnyObject? = userDefind?.objectForKey("slot16")
            if slotPath16 != nil {
                hasOptions16 = true
                var slot16 = slotPath16 as! NSArray
                var slotPath16 = slot16.objectAtIndex(0) as! NSString
                watchAudio16 = slotPath16 as String
                var slotImage16 = slot16.objectAtIndex(1) as! NSString
                
                watchImg16?.setImage(UIImage(named: slotImage16 as String), forState: UIControlState.Normal)
                
                if let isVibrate = slot16.objectAtIndex(2) as? Bool {
                    if isVibrate == true {
                        self.isVibration16 = true
                    }
                }
                
            }
        }else {
            label2?.text = "Full Version Only"
        
            label3?.text = "Full Version Only"
            
            label4?.text = "Full Version Only"
            
            let lockImage: String = "locked-icon"
        
            watchImg5?.setImage(UIImage(named: lockImage as String), forState: UIControlState.Normal)
            watchImg5?.enabled = false
            
            watchImg6?.setImage(UIImage(named: lockImage as String), forState: UIControlState.Normal)
            watchImg6?.enabled = false
            
            
            watchImg7?.setImage(UIImage(named: lockImage as String), forState: UIControlState.Normal)
            watchImg7?.enabled = false
            
            
            watchImg8?.setImage(UIImage(named: lockImage as String), forState: UIControlState.Normal)
            watchImg8?.enabled = false
            
            
            watchImg9?.setImage(UIImage(named: lockImage as String), forState: UIControlState.Normal)
            watchImg9?.enabled = false
            
            
            watchImg10?.setImage(UIImage(named: lockImage as String), forState: UIControlState.Normal)
            watchImg10?.enabled = false
            
            
            watchImg11?.setImage(UIImage(named: lockImage as String), forState: UIControlState.Normal)
            watchImg11?.enabled = false
            
            
            watchImg12?.setImage(UIImage(named: lockImage as String), forState: UIControlState.Normal)
            watchImg12?.enabled = false
            
            
            watchImg13?.setImage(UIImage(named: lockImage as String), forState: UIControlState.Normal)
            watchImg13?.enabled = false
            
            
            watchImg14?.setImage(UIImage(named: lockImage as String), forState: UIControlState.Normal)
            watchImg14?.enabled = false
            
            
            watchImg15?.setImage(UIImage(named: lockImage as String), forState: UIControlState.Normal)
            watchImg15?.enabled = false
            
            
            watchImg16?.setImage(UIImage(named: lockImage as String), forState: UIControlState.Normal)
            watchImg16?.enabled = false
            
        }
    }
    
    func settingUIPage(audioPath: String, imagePath: String, isVibrate: Bool, UIIndex: Int) {
        
        println("Setting")
        
        let sound_slot: String = audioPath as String
        let imgUrl_slot: String = imagePath as String
        
        if UIIndex == 1 {
            hasOptions1 = true
            watchAudio1 = sound_slot as String
            watchImg1?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
            if isVibrate == true {
                self.isVibration1 = true
            }
            
        }else if UIIndex == 2 {
            hasOptions2 = true
            watchAudio2 = audioPath as String
            watchImg2?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
           if isVibrate == true {
                self.isVibration2 = true
            }

        }else if UIIndex == 3 {
            hasOptions3 = true
            watchAudio3 = audioPath as String
            watchImg3?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
            if isVibrate == true {
                self.isVibration3 = true
            }

        }else if UIIndex == 4 {
            hasOptions4 = true
            watchAudio4 = audioPath as String
            watchImg4?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
           if isVibrate == true {
                self.isVibration4 = true
            }

        }else if UIIndex == 5 {
            watchAudio5 = audioPath as String
            watchImg5?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
            if isVibrate == true {
                self.isVibration5 = true
            }

        }else if UIIndex == 6 {
            hasOptions6 = true
            watchAudio6 = audioPath as String
            watchImg6?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
           if isVibrate == true {
                self.isVibration6 = true
            }

        }else if UIIndex == 7 {
            hasOptions7 = true
            watchAudio7 = audioPath as String
            watchImg7?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
            if isVibrate == true {
                self.isVibration7 = true
            }

        }else if UIIndex == 8 {
            hasOptions8 = true
            watchAudio8 = audioPath as String
            watchImg8?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
           if isVibrate == true {
                self.isVibration8 = true
            }

        }else if UIIndex == 9 {
            hasOptions9 = true
            watchAudio9 = audioPath as String
            watchImg9?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
            if isVibrate == true {
                self.isVibration9 = true
            }

        }else if UIIndex == 10 {
            hasOptions10 = true
            watchAudio10 = audioPath as String
            watchImg10?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
            if isVibrate == true {
                self.isVibration10 = true
            }

        }else if UIIndex == 11 {
            hasOptions11 = true
            watchAudio11 = audioPath as String
            watchImg11?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
            if isVibrate == true {
                self.isVibration11 = true
            }

        }else if UIIndex == 12 {
            hasOptions12 = true
            watchAudio12 = audioPath as String
            watchImg12?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
            if isVibrate == true {
                self.isVibration12 = true
            }

        }else if UIIndex == 13 {
            hasOptions13 = true
            watchAudio13 = audioPath as String
            watchImg13?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
            if isVibrate == true {
                self.isVibration13 = true
            }

        }else if UIIndex == 14 {
            hasOptions14 = true
            watchAudio14 = audioPath as String
            watchImg14?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
            if isVibrate == true {
                self.isVibration14 = true
            }

        }else if UIIndex == 15 {
            hasOptions15 = true
            watchAudio15 = audioPath as String
            watchImg15?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
            if isVibrate == true {
                self.isVibration15 = true
            }

        }else if UIIndex == 16 {
            hasOptions16 = true
            watchAudio16 = audioPath as String
            watchImg16?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
            if isVibrate == true {
                self.isVibration16 = true
            }

        }
        
        let keySlot = "slot" + String(UIIndex)
        
        userDefind.setObject([sound_slot, imgUrl_slot, isVibrate], forKey: keySlot)
        
        AppSetting.defaultVar.isAddItem = false
    }
}

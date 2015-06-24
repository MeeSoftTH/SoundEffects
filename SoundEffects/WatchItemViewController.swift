//
//  WatchItemViewController1.swift
//  SoundEffects
//
//  Created by Pawarit_Bunrith on 6/17/2558 BE.
//  Copyright (c) 2558 Pawarit_Bunrith. All rights reserved.
//

import UIKit
import AVFoundation

class WatchItemViewController: UIViewController, SelectItemProtocol {
    
    let userDefind: NSUserDefaults! = NSUserDefaults(suiteName: "group.th.co.meesoft.soundeffect")
    let  defaultImage = "defaultIcon"
    
    var soundPlayer = AVAudioPlayer()
    
    var index: Int = 0
    
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
    
    @IBOutlet var watchChange1: UIButton?
    @IBOutlet var watchChange2: UIButton?
    @IBOutlet var watchChange3: UIButton?
    @IBOutlet var watchChange4: UIButton?
    
    @IBOutlet var watchChange5: UIButton?
    @IBOutlet var watchChange6: UIButton?
    @IBOutlet var watchChange7: UIButton?
    @IBOutlet var watchChange8: UIButton?
    
    @IBOutlet var watchChange9: UIButton?
    @IBOutlet var watchChange10: UIButton?
    @IBOutlet var watchChange11: UIButton?
    @IBOutlet var watchChange12: UIButton?
    
    @IBOutlet var watchChange13: UIButton?
    @IBOutlet var watchChange14: UIButton?
    @IBOutlet var watchChange15: UIButton?
    @IBOutlet var watchChange16: UIButton?
    
    
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUIPage()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Action1(sender: UIButton) {
        self.index = 1
        if hasOptions1 {showDialog(watchAudio1)}else {openAddItemView()}
    }
    
    @IBAction func Action2(sender: UIButton) {
        self.index = 2
        if hasOptions2 {showDialog(watchAudio2)}else {openAddItemView()}
    }
    
    @IBAction func Action3(sender: UIButton) {
        self.index = 3
        if hasOptions3 {showDialog(watchAudio3)}else {openAddItemView()}
        
    }
    
    @IBAction func Action4(sender: UIButton) {
        self.index = 4
        if hasOptions4 {showDialog(watchAudio4)}else {openAddItemView()}
    }
    
    @IBAction func Action5(sender: UIButton) {
        self.index = 5
        if hasOptions5 {showDialog(watchAudio5)}else {openAddItemView()}
    }
    
    @IBAction func Action6(sender: UIButton) {
        self.index = 6
        if hasOptions6 {showDialog(watchAudio6)}else {openAddItemView()}
    }
    
    @IBAction func Action7(sender: UIButton) {
        self.index = 7
        if hasOptions7 {showDialog(watchAudio7)}else {openAddItemView()}
        
    }
    
    @IBAction func Action8(sender: UIButton) {
        self.index = 8
        if hasOptions8 {showDialog(watchAudio8)}else {openAddItemView()}
    }
    
    @IBAction func Action9(sender: UIButton) {
        self.index = 9
        if hasOptions9 {showDialog(watchAudio9)}else {openAddItemView()}
    }
    
    @IBAction func Action10(sender: UIButton) {
        self.index = 10
        if hasOptions10 {showDialog(watchAudio10)}else {openAddItemView()}
    }
    
    @IBAction func Action11(sender: UIButton) {
        self.index = 11
        if hasOptions11 {showDialog(watchAudio11)}else {openAddItemView()}
        
    }
    
    @IBAction func Action12(sender: UIButton) {
        self.index = 12
        if hasOptions12 {showDialog(watchAudio12)}else {openAddItemView()}
    }
    
    @IBAction func Action13(sender: UIButton) {
        self.index = 13
        if hasOptions13 {showDialog(watchAudio13)}else {openAddItemView()}
    }
    
    @IBAction func Action14(sender: UIButton) {
        self.index = 14
        if hasOptions14 {showDialog(watchAudio14)}else {openAddItemView()}
    }
    
    @IBAction func Action15(sender: UIButton) {
        self.index = 15
        if hasOptions15 {showDialog(watchAudio15)}else {openAddItemView()}
        
    }
    
    @IBAction func Action16(sender: UIButton) {
        self.index = 16
        if hasOptions16 {showDialog(watchAudio16)}else {openAddItemView()}
    }
    
    func openAddItemView() {
        
        AppSetting.defaultVar.isAddItem = true
        AppSetting.defaultVar.addIndex = self.index
                
        let pageViewController = self.storyboard!.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        
        pageViewController.controller = self
        
        self.navigationController!.pushViewController(pageViewController, animated: true)
        
    }
    
    func showDialog(path: String){
        var chooseDialog = UIAlertController(title: "Options", message: "Choose or play audio ?",preferredStyle: UIAlertControllerStyle.ActionSheet
        )
        
        chooseDialog.addAction(UIAlertAction(title: "Choose audio", style: .Default, handler: { (action: UIAlertAction!) in
            self.openAddItemView()
        }))
        
        chooseDialog.addAction(UIAlertAction(title: "Play", style: .Default, handler: { (action: UIAlertAction!) in
            self.soundPlayer(path)
            
        }))
        
        chooseDialog.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        
        presentViewController(chooseDialog, animated: true, completion: nil)
    }
    
    func soundPlayer(path: String) {
        let resourcePath = NSBundle.mainBundle().URLForResource(path, withExtension: "mp3")!
        
        soundPlayer = AVAudioPlayer(contentsOfURL: resourcePath, error: nil)
        soundPlayer.stop()
        soundPlayer.prepareToPlay()
        soundPlayer.volume = 1.0
        soundPlayer.play()
        
        println(path)
    }
    
    func updateUIPage() {
        
        println("Refresh1")
        let slotPath1: AnyObject? = userDefind?.objectForKey("slot1")
        if slotPath1 != nil {
            hasOptions1 = true
            var slot1 = slotPath1 as! NSArray
            var slotPath1 = slot1.objectAtIndex(0) as! NSString
            watchAudio1 = slotPath1 as String
            var slotImage1 = slot1.objectAtIndex(1) as! NSString
            
            watchImg1?.setImage(UIImage(named: slotImage1 as String), forState: UIControlState.Normal)
        }
        
        let slotPath2: AnyObject? = userDefind?.objectForKey("slot2")
        if slotPath2 != nil {
            hasOptions2 = true
            var slot2 = slotPath2 as! NSArray
            var slotPath2 = slot2.objectAtIndex(0) as! NSString
            watchAudio2 = slotPath2 as String
            var slotImage2 = slot2.objectAtIndex(1) as! NSString
            
            watchImg2?.setImage(UIImage(named: slotImage2 as String), forState: UIControlState.Normal)
            
        }
        
        let slotPath3: AnyObject? = userDefind?.objectForKey("slot3")
        if slotPath3 != nil {
            hasOptions3 = true
            var slot3 = slotPath3 as! NSArray
            var slotPath3 = slot3.objectAtIndex(0) as! NSString
            watchAudio3 = slotPath3 as String
            var slotImage3 = slot3.objectAtIndex(1) as! NSString
            
            watchImg3?.setImage(UIImage(named: slotImage3 as String), forState: UIControlState.Normal)
            
        }
        
        let slotPath4: AnyObject? = userDefind?.objectForKey("slot4")
        if slotPath4 != nil {
            hasOptions4 = true
            var slot4 = slotPath4 as! NSArray
            var slotPath4 = slot4.objectAtIndex(0) as! NSString
            watchAudio4 = slotPath4 as String
            var slotImage4 = slot4.objectAtIndex(1) as! NSString
            
            watchImg4?.setImage(UIImage(named: slotImage4 as String), forState: UIControlState.Normal)
           
        }
    }
    
    func settingUIPage(audioPath: String, imagePath: String, slotIndex: String, UIIndex: Int) {
        
        println("Setting")
        
        let sound_slot: String = audioPath as String
        let imgUrl_slot: String = imagePath as String
        
        if !(sound_slot == "") && !(imgUrl_slot == "") {
        if UIIndex == 1 {
            watchAudio1 = sound_slot as String
            watchChange1?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Highlighted)
            
            watchChange1?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
        }else if UIIndex == 2 {
            watchAudio2 = audioPath as String
            watchChange2?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
        }else if UIIndex == 3 {
            watchAudio3 = audioPath as String
            watchChange3?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
        }else if UIIndex == 4 {
            watchAudio4 = audioPath as String
            watchChange4?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
        }else if UIIndex == 5 {
            watchAudio5 = audioPath as String
            watchChange5?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
        }else if UIIndex == 6 {
            watchAudio6 = audioPath as String
            watchChange6?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
        }else if UIIndex == 7 {
            watchAudio7 = audioPath as String
            watchChange7?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
        }else if UIIndex == 8 {
            watchAudio8 = audioPath as String
            watchChange8?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
        }else if UIIndex == 9 {
            watchAudio9 = audioPath as String
            watchChange9?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
        }else if UIIndex == 10 {
            watchAudio10 = audioPath as String
            watchChange10?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
        }else if UIIndex == 11 {
            watchAudio11 = audioPath as String
            watchChange11?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
        }else if UIIndex == 12 {
            watchAudio12 = audioPath as String
            watchChange12?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
        }else if UIIndex == 13 {
            watchAudio13 = audioPath as String
            watchChange13?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
        }else if UIIndex == 14 {
            watchAudio14 = audioPath as String
            watchChange14?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
        }else if UIIndex == 15 {
            watchAudio15 = audioPath as String
            watchChange15?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            
        }else if UIIndex == 16 {
            watchAudio16 = audioPath as String
            watchChange16?.setImage(UIImage(named: imagePath as String), forState: UIControlState.Normal)
            }
        
            userDefind.setObject([sound_slot, imgUrl_slot], forKey: slotIndex)
        }
    
    }
}

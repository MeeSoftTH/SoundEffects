//
//  WatchItemViewController1.swift
//  SoundEffects
//
//  Created by Pawarit_Bunrith on 6/17/2558 BE.
//  Copyright (c) 2558 Pawarit_Bunrith. All rights reserved.
//

import UIKit
import AVFoundation

class WatchItemViewController1: UIViewController {
    var soundPlayer = AVAudioPlayer()
    
    var defaultImage = "defaultIcon"
    var tempImage = ""
    var pageIndex: Int = DataSettingAndShare.MyDefaultVariables.categoryIndex
    
    let userDefind: NSUserDefaults! = NSUserDefaults(suiteName: "group.th.co.meesoft.soundeffect")
    
    var index: Int = 0
    
    // Page1
    @IBOutlet weak var watchImg1: UIButton?
    @IBOutlet weak var watchImg2: UIButton?
    @IBOutlet weak var watchImg3: UIButton?
    @IBOutlet weak var watchImg4: UIButton?
    // Page1
    var watchAudio1 =  String()
    var watchAudio2 =  String()
    var watchAudio3 =  String()
    var watchAudio4 =  String()
    
    
    // Page1
    var hasOptions1 = false
    var hasOptions2 = false
    var hasOptions3 = false
    var hasOptions4 = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUIPage1()
        
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
        if hasOptions3 {showDialog(watchAudio4)}else {openAddItemView()}
    }
    func openAddItemView() {
        
        DataSettingAndShare.MyDefaultVariables.isAddItem = true
        DataSettingAndShare.MyDefaultVariables.itemIndex = self.index
        
        let PageViewController = self.storyboard!.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        
        self.navigationController!.pushViewController(PageViewController, animated: true)
        
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
    
    func updateUIPage1() {
        println("Refresh1")
        let slotPath1: AnyObject? = userDefind?.objectForKey("slot1")
        if slotPath1 != nil {
            hasOptions1 = true
            var slot1 = slotPath1 as! NSArray
            var slotPath1 = slot1.objectAtIndex(0) as! NSString
            watchAudio1 = slotPath1 as String
            var slotImage1 = slot1.objectAtIndex(1) as! NSString
            
            if slotImage1 == "" {
                tempImage = defaultImage
            }else {
                tempImage = slotImage1 as String
            }
            
            watchImg1?.setImage(UIImage(named: tempImage as String), forState: UIControlState.Normal)
        }
        
        let slotPath2: AnyObject? = userDefind?.objectForKey("slot2")
        if slotPath2 != nil {
            hasOptions2 = true
            var slot2 = slotPath2 as! NSArray
            var slotPath2 = slot2.objectAtIndex(0) as! NSString
            watchAudio2 = slotPath2 as String
            var slotImage2 = slot2.objectAtIndex(1) as! NSString
            
            if slotImage2 == "" {
                tempImage = defaultImage
            }else {
                tempImage = slotImage2 as String
            }
            
            watchImg2?.setImage(UIImage(named: tempImage as String), forState: UIControlState.Normal)
            
        }
        
        let slotPath3: AnyObject? = userDefind?.objectForKey("slot3")
        if slotPath3 != nil {
            hasOptions3 = true
            var slot3 = slotPath3 as! NSArray
            var slotPath3 = slot3.objectAtIndex(0) as! NSString
            watchAudio3 = slotPath3 as String
            var slotImage3 = slot3.objectAtIndex(1) as! NSString
            
            if slotImage3 == "" {
                tempImage = defaultImage
            }else {
                tempImage = slotImage3 as String
            }
            
            watchImg3?.setImage(UIImage(named: tempImage as String), forState: UIControlState.Normal)
            
        }
        
        let slotPath4: AnyObject? = userDefind?.objectForKey("slot4")
        if slotPath4 != nil {
            hasOptions4 = true
            var slot4 = slotPath4 as! NSArray
            var slotPath4 = slot4.objectAtIndex(0) as! NSString
            watchAudio4 = slotPath4 as String
            var slotImage4 = slot4.objectAtIndex(1) as! NSString
            
            if slotImage4 == "" {
                tempImage = defaultImage
            }else {
                tempImage = slotImage4 as String
            }
            
            watchImg4?.setImage(UIImage(named: tempImage as String), forState: UIControlState.Normal)
           
        }
    }    
}

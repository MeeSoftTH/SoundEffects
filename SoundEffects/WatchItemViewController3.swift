//
//  WatchItemViewController1.swift
//  SoundEffects
//
//  Created by Pawarit_Bunrith on 6/17/2558 BE.
//  Copyright (c) 2558 Pawarit_Bunrith. All rights reserved.
//

import UIKit
import AVFoundation

class WatchItemViewController3: UIViewController {
    var soundPlayer = AVAudioPlayer()
    
    var defaultImage = "defaultIcon"
    var tempImage = ""
    var pageIndex: Int = DataSettingAndShare.MyDefaultVariables.categoryIndex
    
    let userDefind: NSUserDefaults! = NSUserDefaults(suiteName: "group.th.co.meesoft.soundeffect")
    
    var index: Int = 0
        // Page3
    @IBOutlet weak var watchImg9: UIButton?
    @IBOutlet weak var watchImg10: UIButton?
    @IBOutlet weak var watchImg11: UIButton?
    @IBOutlet weak var watchImg12: UIButton?
    
    // Page3
    var watchAudio9 =  String()
    var watchAudio10 =  String()
    var watchAudio11 =  String()
    var watchAudio12 =  String()
    
    
    
    // Page3
    var hasOptions9 = false
    var hasOptions10 = false
    var hasOptions11 = false
    var hasOptions12 = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
             updateUIPage3()
        
        
        
       
        
        
       
        // Do any additional setup after loading the view.
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
    
    func updateUIPage3() { println("Refresh3")
        
        let slotPath9: AnyObject? = userDefind?.objectForKey("slot9")
        if slotPath9 != nil {
            hasOptions9 = true
            var slot9 = slotPath9 as! NSArray
            var slotPath9 = slot9.objectAtIndex(0) as! NSString
            watchAudio9 = slotPath9 as String
            var slotImage9 = slot9.objectAtIndex(1) as! NSString
            
            if slotImage9 == "" {
                tempImage = defaultImage
            }else {
                tempImage = slotImage9 as String
            }
            
            watchImg9?.setImage(UIImage(named: tempImage as String), forState: UIControlState.Normal)
            
        }
        
        let slotPath10: AnyObject? = userDefind?.objectForKey("slot10")
        if slotPath10 != nil {
            hasOptions10 = true
            var slot10 = slotPath10 as! NSArray
            var slotPath10 = slot10.objectAtIndex(0) as! NSString
            watchAudio10 = slotPath10 as String
            var slotImage10 = slot10.objectAtIndex(1) as! NSString
            
            if slotImage10 == "" {
                tempImage = defaultImage
            }else {
                tempImage = slotImage10 as String
            }
            
            watchImg10?.setImage(UIImage(named: tempImage as String), forState: UIControlState.Normal)
            
        }
        
        let slotPath11: AnyObject? = userDefind?.objectForKey("slot11")
        if slotPath11 != nil {
            hasOptions11 = true
            var slot11 = slotPath11 as! NSArray
            var slotPath11 = slot11.objectAtIndex(0) as! NSString
            watchAudio11 = slotPath11 as String
            var slotImage11 = slot11.objectAtIndex(1) as! NSString
            
            if slotImage11 == "" {
                tempImage = defaultImage
            }else {
                tempImage = slotImage11 as String
            }
            
            watchImg11?.setImage(UIImage(named: tempImage as String), forState: UIControlState.Normal)
            
        }
        
        let slotPath12: AnyObject? = userDefind?.objectForKey("slot12")
        if slotPath12 != nil {
            hasOptions12 = true
            var slot12 = slotPath12 as! NSArray
            var slotPath12 = slot12.objectAtIndex(0) as! NSString
            watchAudio12 = slotPath12 as String
            var slotImage12 = slot12.objectAtIndex(1) as! NSString
            
            if slotImage12 == "" {
                tempImage = defaultImage
            }else {
                tempImage = slotImage12 as String
            }
            
            watchImg12?.setImage(UIImage(named: tempImage as String), forState: UIControlState.Normal)
        }
    }
}

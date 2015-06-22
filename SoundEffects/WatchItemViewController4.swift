//
//  WatchItemViewController1.swift
//  SoundEffects
//
//  Created by Pawarit_Bunrith on 6/17/2558 BE.
//  Copyright (c) 2558 Pawarit_Bunrith. All rights reserved.
//

import UIKit
import AVFoundation

class WatchItemViewController4: UIViewController {
    var soundPlayer = AVAudioPlayer()
    
    var defaultImage = "defaultIcon"
    var tempImage = ""
    var pageIndex: Int = DataSettingAndShare.MyDefaultVariables.categoryIndex
    
    let userDefind: NSUserDefaults! = NSUserDefaults(suiteName: "group.th.co.meesoft.soundeffect")
    
    var index: Int = 0
    
    // Page4
    @IBOutlet weak var watchImg13: UIButton?
    @IBOutlet weak var watchImg14: UIButton?
    @IBOutlet weak var watchImg15: UIButton?
    @IBOutlet weak var watchImg16: UIButton?
    
    
    // Page4
    var watchAudio13 =  String()
    var watchAudio14 =  String()
    var watchAudio15 =  String()
    var watchAudio16 =  String()
    
    
    
    // Page4
    var hasOptions13 = false
    var hasOptions14 = false
    var hasOptions15 = false
    var hasOptions16 = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userDefind.synchronize()
            updateUIPage4()
        // Do any additional setup after loading the view.
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
    func updateUIPage4() { println("Refresh4")
        
        let slotPath13: AnyObject? = userDefind?.objectForKey("slot13")
        if slotPath13 != nil {
            hasOptions13 = true
            var slot13 = slotPath13 as! NSArray
            var slotPath13 = slot13.objectAtIndex(0) as! NSString
            watchAudio13 = slotPath13 as String
            var slotImage13 = slot13.objectAtIndex(1) as! NSString
            
            if slotImage13 == "" {
                tempImage = defaultImage
            }else {
                tempImage = slotImage13 as String
            }
            
            watchImg13?.setImage(UIImage(named: tempImage as String), forState: UIControlState.Normal)
            
        }
        
        let slotPath14: AnyObject? = userDefind?.objectForKey("slot14")
        if slotPath14 != nil {
            hasOptions14 = true
            var slot14 = slotPath14 as! NSArray
            var slotPath14 = slot14.objectAtIndex(0) as! NSString
            watchAudio14 = slotPath14 as String
            var slotImage14 = slot14.objectAtIndex(1) as! NSString
            
            if slotImage14 == "" {
                tempImage = defaultImage
            }else {
                tempImage = slotImage14 as String
            }
            
            watchImg14?.setImage(UIImage(named: tempImage as String), forState: UIControlState.Normal)
            
        }
        
        let slotPath15: AnyObject? = userDefind?.objectForKey("slot15")
        if slotPath15 != nil {
            hasOptions15 = true
            var slot15 = slotPath15 as! NSArray
            var slotPath15 = slot15.objectAtIndex(0) as! NSString
            watchAudio15 = slotPath15 as String
            var slotImage15 = slot15.objectAtIndex(1) as! NSString
            
            if slotImage15 == "" {
                tempImage = defaultImage
            }else {
                tempImage = slotImage15 as String
            }
            
            watchImg15?.setImage(UIImage(named: tempImage as String), forState: UIControlState.Normal)
            
        }
        
        let slotPath16: AnyObject? = userDefind?.objectForKey("slot16")
        if slotPath16 != nil {
            hasOptions16 = true
            var slot16 = slotPath16 as! NSArray
            var slotPath16 = slot16.objectAtIndex(0) as! NSString
            watchAudio16 = slotPath16 as String
            var slotImage16 = slot16.objectAtIndex(1) as! NSString
            
            if slotImage16 == "" {
                tempImage = defaultImage
            }else {
                tempImage = slotImage16 as String
            }
            
            watchImg16?.setImage(UIImage(named: tempImage as String), forState: UIControlState.Normal)
            
        }
        
        userDefind.synchronize()
    }
    
}

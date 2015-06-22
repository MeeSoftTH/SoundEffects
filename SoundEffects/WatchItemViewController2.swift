//
//  WatchItemViewController1.swift
//  SoundEffects
//
//  Created by Pawarit_Bunrith on 6/17/2558 BE.
//  Copyright (c) 2558 Pawarit_Bunrith. All rights reserved.
//

import UIKit
import AVFoundation

class WatchItemViewController2: UIViewController {
    var soundPlayer = AVAudioPlayer()
    
    var defaultImage = "defaultIcon"
    var tempImage = ""
    var pageIndex: Int = DataSettingAndShare.MyDefaultVariables.categoryIndex
    
    let userDefind: NSUserDefaults! = NSUserDefaults(suiteName: "group.th.co.meesoft.soundeffect")
    
    var index: Int = 0
    // Page2
    @IBOutlet weak var watchImg5: UIButton?
    @IBOutlet weak var watchImg6: UIButton?
    @IBOutlet weak var watchImg7: UIButton?
    @IBOutlet weak var watchImg8: UIButton?
    
    
    // Page2
    var watchAudio5 =  String()
    var watchAudio6 =  String()
    var watchAudio7 =  String()
    var watchAudio8 =  String()
    
    
        // Page2
    var hasOptions5 = false
    var hasOptions6 = false
    var hasOptions7 = false
    var hasOptions8 = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUIPage2()
        
        
        
       
        
        
       
        // Do any additional setup after loading the view.
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
    
    func updateUIPage2() { println("Refresh2")
        
        let slotPath5: AnyObject? = userDefind?.objectForKey("slot5")
        if slotPath5 != nil {
            hasOptions5 = true
            var slot5 = slotPath5 as! NSArray
            var slotPath5 = slot5.objectAtIndex(0) as! NSString
            watchAudio5 = slotPath5 as String
            var slotImage5 = slot5.objectAtIndex(1) as! NSString
            
            if slotImage5 == "" {
                tempImage = defaultImage
            }else {
                tempImage = slotImage5 as String
            }
            
            watchImg5?.setImage(UIImage(named: tempImage as String), forState: UIControlState.Normal)
            
        }
        
        let slotPath6: AnyObject? = userDefind?.objectForKey("slot6")
        if slotPath6 != nil {
            hasOptions6 = true
            var slot6 = slotPath6 as! NSArray
            var slotPath6 = slot6.objectAtIndex(0) as! NSString
            watchAudio6 = slotPath6 as String
            var slotImage6 = slot6.objectAtIndex(1) as! NSString
            
            if slotImage6 == "" {
                tempImage = defaultImage
            }else {
                tempImage = slotImage6 as String
            }
            
            watchImg6?.setImage(UIImage(named: tempImage as String), forState: UIControlState.Normal)
            
        }
        
        let slotPath7: AnyObject? = userDefind?.objectForKey("slot7")
        if slotPath7 != nil {
            hasOptions7 = true
            var slot7 = slotPath7 as! NSArray
            var slotPath7 = slot7.objectAtIndex(0) as! NSString
            watchAudio7 = slotPath7 as String
            var slotImage7 = slot7.objectAtIndex(1) as! NSString
            
            if slotImage7 == "" {
                tempImage = defaultImage
            }else {
                tempImage = slotImage7 as String
            }
            
            watchImg7?.setImage(UIImage(named: tempImage as String), forState: UIControlState.Normal)
            
        }
        
        let slotPath8: AnyObject? = userDefind?.objectForKey("slot8")
        if slotPath8 != nil {
            hasOptions8 = true
            var slot8 = slotPath8 as! NSArray
            var slotPath8 = slot8.objectAtIndex(0) as! NSString
            watchAudio8 = slotPath8 as String
            var slotImage8 = slot8.objectAtIndex(1) as! NSString
            
            if slotImage8 == "" {
                tempImage = defaultImage
            }else {
                tempImage = slotImage8 as String
            }
            
            watchImg8?.setImage(UIImage(named: tempImage as String), forState: UIControlState.Normal)
            
        }
    }    
}

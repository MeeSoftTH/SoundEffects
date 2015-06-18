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
    
    let appGroupId: String = "group.th.co.meesoft.soundeffect"
    var index: Int = 0
    
    @IBOutlet weak var image1: UIButton?
    @IBOutlet weak var image2: UIButton?
    @IBOutlet weak var image3: UIButton?
    @IBOutlet weak var image4: UIButton?
    
    
    
    var ActionSound1 =  String()
    var ActionSound2 =  String()
    var ActionSound3 =  String()
    var ActionSound4 =  String()
    
    var hasOptions1 = false
    var hasOptions2 = false
    var hasOptions3 = false
    var hasOptions4 = false
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatePath()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Action1(sender: UIButton) {
        self.index = 1
        if hasOptions1 {showDialog(ActionSound1)}else {openAddItemView()}
    }
    
    @IBAction func Action2(sender: UIButton) {
        self.index = 2
        if hasOptions2 {showDialog(ActionSound2)}else {openAddItemView()}
    }
    
    @IBAction func Action3(sender: UIButton) {
        self.index = 3
        if hasOptions3 {showDialog(ActionSound3)}else {openAddItemView()}
        
    }
    
    @IBAction func Action4(sender: UIButton) {
        self.index = 4
        if hasOptions4 {showDialog(ActionSound4)}else {openAddItemView()}
    }
    
    @IBAction func refresh(sender: UIButton) {
        updatePath()
    }
    
    
    func openAddItemView() {
        
        DataSettingAndShare.MyDefaultVariables.isAddItem = true
        DataSettingAndShare.MyDefaultVariables.itemIndex = self.index
        
        let secondViewController = self.storyboard!.instantiateViewControllerWithIdentifier("PageViewController") as! ViewController
        
        self.navigationController!.presentViewController(secondViewController, animated: true, completion : nil)
        //updatePath()
    }
    
    func updatePath() {
        let userDefind: NSUserDefaults! = NSUserDefaults(suiteName: self.appGroupId)
        
        let slotPath1: AnyObject? = userDefind?.objectForKey("slot1")
        if slotPath1 != nil {
            hasOptions1 = true
            var slot1 = slotPath1 as! NSArray
            var slotPath1 = slot1.objectAtIndex(0) as! NSString
            ActionSound1 = slotPath1 as String
            var slotImage1 = slot1.objectAtIndex(1) as! NSString
            image1!.setImage(UIImage(named: slotImage1 as String), forState: UIControlState.Normal)
        }
        
        let slotPath2: AnyObject? = userDefind?.objectForKey("slot2")
        if slotPath2 != nil {
            hasOptions2 = true
            var slot2 = slotPath2 as! NSArray
            var slotPath2 = slot2.objectAtIndex(0) as! NSString
            ActionSound1 = slotPath2 as String
            var slotImage2 = slot2.objectAtIndex(1) as! NSString
            image2!.setImage(UIImage(named: slotImage2 as String), forState: UIControlState.Normal)
        }
        
        let slotPath3: AnyObject? = userDefind?.objectForKey("slot3")
        if slotPath3 != nil {
            hasOptions3 = true
            var slot3 = slotPath3 as! NSArray
            var slotPath3 = slot3.objectAtIndex(0) as! NSString
            ActionSound3 = slotPath3 as String
            var slotImage3 = slot3.objectAtIndex(1) as! NSString
            image3!.setImage(UIImage(named: slotImage3 as String), forState: UIControlState.Normal)
        }
        
        let slotPath4: AnyObject? = userDefind?.objectForKey("slot4")
        if slotPath4 != nil {
            hasOptions4 = true
            var slot4 = slotPath4 as! NSArray
            var slotPath4 = slot4.objectAtIndex(0) as! NSString
            ActionSound4 = slotPath4 as String
            var slotImage4 = slot4.objectAtIndex(1) as! NSString
            image4!.setImage(UIImage(named: slotImage4 as String), forState: UIControlState.Normal)
        }
        
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
    
    
}

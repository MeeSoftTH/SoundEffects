//
//  ItemViewController1.swift
//  SoundEffect
//
//  Created by Pawarit Bunrith on 6/2/2558 BE.
//  Copyright (c) 2558 Pawarit Bunrith. All rights reserved.
//

import UIKit
import AVFoundation

class ItemViewController3: UIViewController {
    var soundPlayer = AVAudioPlayer()
    
    let isItemsAdd: Bool = DataSettingAndShare.MyDefaultVariables.isAddItem
    var index: Int = 0
    let appGroupId: String = "group.th.co.meesoft.soundeffect"
    
    @IBOutlet weak var image1: UIButton!
    @IBOutlet weak var image2: UIButton!
    @IBOutlet weak var image3: UIButton!
    @IBOutlet weak var image4: UIButton!
    @IBOutlet weak var image5: UIButton!
    @IBOutlet weak var image6: UIButton!
    
    @IBOutlet weak var topBar: UINavigationBar!
    @IBOutlet weak var titleBar: UINavigationBar!

    
    
    var ActionSound1 =  String()
    var ActionSound2 =  String()
    var ActionSound3 =  String()
    var ActionSound4 =  String()
    var ActionSound5 =  String()
    var ActionSound6 =  String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if !isItemsAdd {
            
        }
        
        updatePath()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func Action1(sender: UIButton) {
        if isItemsAdd {
            self.index = 13
            showDialog(ActionSound1)
        }else {
            soundPlayer(ActionSound1)
        }
    }
    
    @IBAction func Action2(sender: UIButton) {
        
        if isItemsAdd {
            self.index = 14
            showDialog(ActionSound2)
        }else {
            soundPlayer(ActionSound2)}
    }
    
    @IBAction func Action3(sender: UIButton) {
        if isItemsAdd {
            self.index = 15
            showDialog(ActionSound3)
        }else {
            
            soundPlayer(ActionSound3)}
    }
    
    @IBAction func Action4(sender: UIButton) {
        if isItemsAdd {
            self.index = 16
            showDialog(ActionSound4)
        }else {
            
            soundPlayer(ActionSound4)}
    }
    
    @IBAction func Action5(sender: UIButton) {
        if isItemsAdd {
            self.index = 17
            showDialog(ActionSound5)
        }else {
            
            soundPlayer(ActionSound5)}
    }
    
    @IBAction func Action6(sender: UIButton) {
        if isItemsAdd {
            self.index = 18
            showDialog(ActionSound6)
        }else {
            
            soundPlayer(ActionSound6)}
    }
    
    @IBAction func cancel(sender: UIBarButtonItem) {
        
        if DataSettingAndShare.MyDefaultVariables.isAddItem == true {
            DataSettingAndShare.MyDefaultVariables.isAddItem = false
        }
        
        self.dismissViewControllerAnimated(true, completion: nil)
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
    
    func updatePath() {
        let userDefind: NSUserDefaults! = NSUserDefaults(suiteName: appGroupId)
        
        var sound1 = userDefind?.objectForKey("sound13") as! NSArray
        var soundPath1 = sound1.objectAtIndex(0) as! NSString
        ActionSound1 = soundPath1 as String
        
        var imagePath1 = sound1.objectAtIndex(1) as! NSString
        image1.setImage(UIImage(named: imagePath1 as String), forState:UIControlState.Normal)
        
        var sound2 = userDefind?.objectForKey("sound14") as! NSArray
        var soundPath2 = sound2.objectAtIndex(0) as! NSString
        ActionSound2 = soundPath2 as String
        
        var imagePath2 = sound2.objectAtIndex(1) as! NSString
        image2.setImage(UIImage(named: imagePath2 as String), forState:UIControlState.Normal)
        
        var sound3 = userDefind?.objectForKey("sound15") as! NSArray
        var soundPath3 = sound3.objectAtIndex(0) as! NSString
        ActionSound3 = soundPath3 as String
        
        var imagePath3 = sound3.objectAtIndex(1) as! NSString
        image3.setImage(UIImage(named: imagePath3 as String), forState:UIControlState.Normal)
        
        var sound4 = userDefind?.objectForKey("sound16") as! NSArray
        var soundPath4 = sound4.objectAtIndex(0) as! NSString
        ActionSound4 = soundPath4 as String
        
        var imagePath4 = sound4.objectAtIndex(1) as! NSString
        image4.setImage(UIImage(named: imagePath4 as String), forState:UIControlState.Normal)
        
        var sound5 = userDefind?.objectForKey("sound17") as! NSArray
        var soundPath5 = sound5.objectAtIndex(0) as! NSString
        ActionSound5 = soundPath5 as String
        
        var imagePath5 = sound5.objectAtIndex(1) as! NSString
        image5.setImage(UIImage(named: imagePath5 as String), forState:UIControlState.Normal)
        
        var sound6 = userDefind?.objectForKey("sound18") as! NSArray
        var soundPath6 = sound6.objectAtIndex(0) as! NSString
        ActionSound6 = soundPath6 as String
        
        var imagePath6 = sound6.objectAtIndex(1) as! NSString
        image6.setImage(UIImage(named: imagePath6 as String), forState:UIControlState.Normal)
        
    }
    
    
    func showDialog(path: String){
        var chooseDialog = UIAlertController(title: "Options", message: "Choose or play audio ?",preferredStyle: UIAlertControllerStyle.ActionSheet
        )
        
        chooseDialog.addAction(UIAlertAction(title: "Choose", style: .Default, handler: { (action: UIAlertAction!) in
            
            let userDefind: NSUserDefaults! = NSUserDefaults(suiteName: self.appGroupId)
            
            var itemSlot = "slot" + String(DataSettingAndShare.MyDefaultVariables.itemIndex)
            var sound = "sound" + String(self.index)
            
            if self.index == 13 {
                var sound1 = userDefind?.objectForKey(sound) as! NSArray
                var soundPath1 = sound1.objectAtIndex(0) as! NSString
                var imagePath1 = sound1.objectAtIndex(1) as! NSString
                
                let sound_slot1: String = soundPath1 as String
                let imgUrl_slot1: String = imagePath1 as String
                userDefind.setObject([sound_slot1, imgUrl_slot1], forKey: itemSlot)
                
            }else if self.index == 14 {
                var sound2 = userDefind?.objectForKey(sound) as! NSArray
                var soundPath2 = sound2.objectAtIndex(0) as! NSString
                var imagePath2 = sound2.objectAtIndex(1) as! NSString
                
                let sound_slot2: String = soundPath2 as String
                let imgUrl_slot2: String = imagePath2 as String
                userDefind.setObject([sound_slot2, imgUrl_slot2], forKey: itemSlot)
                
            } else if self.index == 15 {
                var sound3 = userDefind?.objectForKey(sound) as! NSArray
                var soundPath3 = sound3.objectAtIndex(0) as! NSString
                var imagePath3 = sound3.objectAtIndex(1) as! NSString
                
                let sound_slot3: String = soundPath3 as String
                let imgUrl_slot3: String = imagePath3 as String
                userDefind.setObject([sound_slot3, imgUrl_slot3], forKey: itemSlot)
                
            }else if self.index == 16 {
                var sound4 = userDefind?.objectForKey(sound) as! NSArray
                var soundPath4 = sound4.objectAtIndex(0) as! NSString
                var imagePath4 = sound4.objectAtIndex(1) as! NSString
                
                let sound_slot4: String = soundPath4 as String
                let imgUrl_slot4: String = imagePath4 as String
                userDefind.setObject([sound_slot4, imgUrl_slot4], forKey: itemSlot)
                
            }else if self.index == 17 {
                var sound5 = userDefind?.objectForKey(sound) as! NSArray
                var soundPath5 = sound5.objectAtIndex(0) as! NSString
                var imagePath5 = sound5.objectAtIndex(1) as! NSString
                
                let sound_slot5: String = soundPath5 as String
                let imgUrl_slot5: String = imagePath5 as String
                userDefind.setObject([sound_slot5, imgUrl_slot5], forKey: itemSlot)
                
            }else if self.index == 18 {
                var sound6 = userDefind?.objectForKey(sound) as! NSArray
                var soundPath6 = sound6.objectAtIndex(0) as! NSString
                var imagePath6 = sound6.objectAtIndex(1) as! NSString
                
                let sound_slot6: String = soundPath6 as String
                let imgUrl_slot6: String = imagePath6 as String
                userDefind.setObject([sound_slot6, imgUrl_slot6], forKey: itemSlot)
            }
            self.dismissViewControllerAnimated(true, completion: nil)
        }))
        
        chooseDialog.addAction(UIAlertAction(title: "Play", style: .Default, handler: { (action: UIAlertAction!) in
            self.soundPlayer(path)
            
        }))
        
        chooseDialog.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        
        presentViewController(chooseDialog, animated: true, completion: nil)
    }
    
}

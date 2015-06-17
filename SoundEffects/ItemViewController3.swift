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
    
    
    @IBOutlet weak var image13: UIButton!
    @IBOutlet weak var image14: UIButton!
    @IBOutlet weak var image15: UIButton!
    @IBOutlet weak var image16: UIButton!
    @IBOutlet weak var image17: UIButton!
    @IBOutlet weak var image18: UIButton!
    
    
    var ActionSound13 =  String()
    var ActionSound14 =  String()
    var ActionSound15 =  String()
    var ActionSound16 =  String()
    var ActionSound17 =  String()
    var ActionSound18 =  String()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatePath()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func Action13(sender: UIButton) {
        soundPlayer(ActionSound13)
    }
    
    @IBAction func Action14(sender: UIButton) {
        soundPlayer(ActionSound14)
    }
    
    @IBAction func Action15(sender: UIButton) {
        soundPlayer(ActionSound15)
    }
    
    @IBAction func Action16(sender: UIButton) {
        soundPlayer(ActionSound16)
    }
    
    @IBAction func Action17(sender: UIButton) {
        soundPlayer(ActionSound17)
    }
    
    @IBAction func Action18(sender: UIButton) {
        soundPlayer(ActionSound18)
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
        let userDefind: NSUserDefaults! = NSUserDefaults(suiteName: "group.th.co.meesoft.soundeffect")
        
        var sound13 = userDefind?.objectForKey("sound13") as! NSArray
        var soundPath13 = sound13.objectAtIndex(0) as! NSString
        ActionSound13 = soundPath13 as String
        
        var imagePath13 = sound13.objectAtIndex(1) as! NSString
        image13.setImage(UIImage(named: imagePath13 as String), forState:UIControlState.Normal)
        
        var sound14 = userDefind?.objectForKey("sound14") as! NSArray
        var soundPath14 = sound14.objectAtIndex(0) as! NSString
        ActionSound14 = soundPath14 as String
        
        var imagePath14 = sound14.objectAtIndex(1) as! NSString
        image14.setImage(UIImage(named: imagePath14 as String), forState:UIControlState.Normal)
        
        var sound15 = userDefind?.objectForKey("sound15") as! NSArray
        var soundPath15 = sound15.objectAtIndex(0) as! NSString
        ActionSound15 = soundPath15 as String
        
        var imagePath15 = sound15.objectAtIndex(1) as! NSString
        image15.setImage(UIImage(named: imagePath15 as String), forState:UIControlState.Normal)
        
        var sound16 = userDefind?.objectForKey("sound16") as! NSArray
        var soundPath16 = sound16.objectAtIndex(0) as! NSString
        ActionSound16 = soundPath16 as String
        
        var imagePath16 = sound16.objectAtIndex(1) as! NSString
        image16.setImage(UIImage(named: imagePath16 as String), forState:UIControlState.Normal)
        
        var sound17 = userDefind?.objectForKey("sound17") as! NSArray
        var soundPath17 = sound17.objectAtIndex(0) as! NSString
        ActionSound17 = soundPath17 as String
        
        var imagePath17 = sound17.objectAtIndex(1) as! NSString
        image17.setImage(UIImage(named: imagePath17 as String), forState:UIControlState.Normal)
        
        var sound18 = userDefind?.objectForKey("sound18") as! NSArray
        var soundPath18 = sound18.objectAtIndex(0) as! NSString
        ActionSound18 = soundPath18 as String
        
        var imagePath18 = sound18.objectAtIndex(1) as! NSString
        image18.setImage(UIImage(named: imagePath18 as String), forState:UIControlState.Normal)
    }
    
}

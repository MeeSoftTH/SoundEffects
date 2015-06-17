//
//  ItemViewController1.swift
//  SoundEffect
//
//  Created by Pawarit Bunrith on 6/2/2558 BE.
//  Copyright (c) 2558 Pawarit Bunrith. All rights reserved.
//

import UIKit
import AVFoundation

class ItemViewController2: UIViewController {
    var soundPlayer = AVAudioPlayer()
    
    
    @IBOutlet weak var image7: UIButton!
    @IBOutlet weak var image8: UIButton!
    @IBOutlet weak var image9: UIButton!
    @IBOutlet weak var image10: UIButton!
    @IBOutlet weak var image11: UIButton!
    @IBOutlet weak var image12: UIButton!
    
    
    
    var ActionSound7 =  String()
    var ActionSound8 =  String()
    var ActionSound9 =  String()
    var ActionSound10 =  String()
    var ActionSound11 =  String()
    var ActionSound12 =  String()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatePath()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func Action7(sender: UIButton) {
        soundPlayer(ActionSound7)
    }
    
    @IBAction func Action8(sender: UIButton) {
        soundPlayer(ActionSound8)
    }
    
    @IBAction func Action9(sender: UIButton) {
        soundPlayer(ActionSound9)
    }
    
    @IBAction func Action10(sender: UIButton) {
        soundPlayer(ActionSound10)
    }
    
    @IBAction func Action11(sender: UIButton) {
        soundPlayer(ActionSound11)
    }
    
    @IBAction func Action12(sender: UIButton) {
        soundPlayer(ActionSound12)
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
        
        
        var sound7 = userDefind?.objectForKey("sound7") as! NSArray
        var soundPath7 = sound7.objectAtIndex(0) as! NSString
        ActionSound7 = soundPath7 as String
        
        var imagePath7 = sound7.objectAtIndex(1) as! NSString
        image7.setImage(UIImage(named: imagePath7 as String), forState:UIControlState.Normal)
        
        var sound8 = userDefind?.objectForKey("sound8") as! NSArray
        var soundPath8 = sound8.objectAtIndex(0) as! NSString
        ActionSound8 = soundPath8 as String
        
        var imagePath8 = sound8.objectAtIndex(1) as! NSString
        image8.setImage(UIImage(named: imagePath8 as String), forState:UIControlState.Normal)
        
        var sound9 = userDefind?.objectForKey("sound9") as! NSArray
        var soundPath9 = sound9.objectAtIndex(0) as! NSString
        ActionSound9 = soundPath9 as String
        
        var imagePath9 = sound9.objectAtIndex(1) as! NSString
        image9.setImage(UIImage(named: imagePath9 as String), forState:UIControlState.Normal)
        
        var sound10 = userDefind?.objectForKey("sound10") as! NSArray
        var soundPath10 = sound10.objectAtIndex(0) as! NSString
        ActionSound10 = soundPath10 as String
        
        var imagePath10 = sound10.objectAtIndex(1) as! NSString
        image10.setImage(UIImage(named: imagePath10 as String), forState:UIControlState.Normal)
        
        var sound11 = userDefind?.objectForKey("sound11") as! NSArray
        var soundPath11 = sound11.objectAtIndex(0) as! NSString
        ActionSound11 = soundPath11 as String
        
        var imagePath11 = sound11.objectAtIndex(1) as! NSString
        image11.setImage(UIImage(named: imagePath11 as String), forState:UIControlState.Normal)
        
        var sound12 = userDefind?.objectForKey("sound12") as! NSArray
        var soundPath12 = sound12.objectAtIndex(0) as! NSString
        ActionSound12 = soundPath12 as String
        
        var imagePath12 = sound12.objectAtIndex(1) as! NSString
        image12.setImage(UIImage(named: imagePath12 as String), forState:UIControlState.Normal)
        
    }
    
}

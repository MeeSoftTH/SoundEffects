//
//  ItemViewController1.swift
//  SoundEffect
//
//  Created by Pawarit Bunrith on 6/2/2558 BE.
//  Copyright (c) 2558 Pawarit Bunrith. All rights reserved.
//

import UIKit
import AVFoundation

class ItemViewController1: UIViewController {
    var soundPlayer = AVAudioPlayer()
    
    
    @IBOutlet weak var image1: UIButton!
    @IBOutlet weak var image2: UIButton!
    @IBOutlet weak var image3: UIButton!
    @IBOutlet weak var image4: UIButton!
    @IBOutlet weak var image5: UIButton!
    @IBOutlet weak var image6: UIButton!
    
    
    var ActionSound1 =  String()
    var ActionSound2 =  String()
    var ActionSound3 =  String()
    var ActionSound4 =  String()
    var ActionSound5 =  String()
    var ActionSound6 =  String()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatePath()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func Action1(sender: UIButton) {
        soundPlayer(ActionSound1)
        
    }
    
    @IBAction func Action2(sender: UIButton) {
        soundPlayer(ActionSound2)
    }
    
    @IBAction func Action3(sender: UIButton) {
        soundPlayer(ActionSound3)
    }
    
    @IBAction func Action4(sender: UIButton) {
        soundPlayer(ActionSound4)
    }
    
    @IBAction func Action5(sender: UIButton) {
        soundPlayer(ActionSound5)
    }
    
    @IBAction func Action6(sender: UIButton) {
        soundPlayer(ActionSound6)
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
        
        var sound1 = userDefind?.objectForKey("sound1") as! NSArray
        var soundPath1 = sound1.objectAtIndex(0) as! NSString
        ActionSound1 = soundPath1 as String
        
        var imagePath1 = sound1.objectAtIndex(1) as! NSString
        image1.setImage(UIImage(named: imagePath1 as String), forState:UIControlState.Normal)
        
        var sound2 = userDefind?.objectForKey("sound2") as! NSArray
        var soundPath2 = sound2.objectAtIndex(0) as! NSString
        ActionSound2 = soundPath2 as String
        
        var imagePath2 = sound2.objectAtIndex(1) as! NSString
        image2.setImage(UIImage(named: imagePath2 as String), forState:UIControlState.Normal)
        
        var sound3 = userDefind?.objectForKey("sound3") as! NSArray
        var soundPath3 = sound3.objectAtIndex(0) as! NSString
        ActionSound3 = soundPath3 as String
        
        var imagePath3 = sound3.objectAtIndex(1) as! NSString
        image3.setImage(UIImage(named: imagePath3 as String), forState:UIControlState.Normal)
        
        var sound4 = userDefind?.objectForKey("sound4") as! NSArray
        var soundPath4 = sound4.objectAtIndex(0) as! NSString
        ActionSound4 = soundPath4 as String
        
        var imagePath4 = sound4.objectAtIndex(1) as! NSString
        image4.setImage(UIImage(named: imagePath4 as String), forState:UIControlState.Normal)
        
        var sound5 = userDefind?.objectForKey("sound5") as! NSArray
        var soundPath5 = sound5.objectAtIndex(0) as! NSString
        ActionSound5 = soundPath5 as String
        
        var imagePath5 = sound5.objectAtIndex(1) as! NSString
        image5.setImage(UIImage(named: imagePath5 as String), forState:UIControlState.Normal)
        
        var sound6 = userDefind?.objectForKey("sound6") as! NSArray
        var soundPath6 = sound6.objectAtIndex(0) as! NSString
        ActionSound6 = soundPath6 as String
        
        var imagePath6 = sound6.objectAtIndex(1) as! NSString
        image6.setImage(UIImage(named: imagePath6 as String), forState:UIControlState.Normal)
        
            }
    
}

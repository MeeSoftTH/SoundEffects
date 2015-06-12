//
//  InterfaceController.swift
//  SoundEffects WatchKit Extension
//
//  Created by Pawarit_Bunrith on 6/5/2558 BE.
//  Copyright (c) 2558 Pawarit_Bunrith. All rights reserved.
//

import WatchKit
import Foundation
import AVFoundation

class InterfaceController1: WKInterfaceController {
    
    var soundPlayer = AVAudioPlayer()
    
    let ActionSound1 = NSBundle.mainBundle().URLForResource("baby1", withExtension: "mp3")!
    let ActionSound2 = NSBundle.mainBundle().URLForResource("baby2", withExtension: "mp3")!
    let ActionSound3 = NSBundle.mainBundle().URLForResource("baby3", withExtension: "mp3")!
    let ActionSound4 = NSBundle.mainBundle().URLForResource("baby4", withExtension: "mp3")!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func Action1() {
         soundPlayer(ActionSound1)
    }
    
    @IBAction func Action2() {
        soundPlayer(ActionSound2)
    }
    
    @IBAction func Action3() {
        soundPlayer(ActionSound3)
    }
    
    @IBAction func Action4() {
        soundPlayer(ActionSound4)
    }
    
    func soundPlayer(path: NSURL) {
        soundPlayer = AVAudioPlayer(contentsOfURL: path, error: nil)
        soundPlayer.prepareToPlay()
        soundPlayer.play()
    }

}

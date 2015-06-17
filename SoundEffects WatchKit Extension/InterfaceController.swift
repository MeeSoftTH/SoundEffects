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

class InterfaceController: WKInterfaceController {
    
    var soundPlayer = AVAudioPlayer()
    
    let ActionSound1 = NSBundle.mainBundle().URLForResource("baby1", withExtension: "mp3")!
    let ActionSound2 = NSBundle.mainBundle().URLForResource("baby2", withExtension: "mp3")!
    let ActionSound3 = NSBundle.mainBundle().URLForResource("baby3", withExtension: "mp3")!
    let ActionSound4 = NSBundle.mainBundle().URLForResource("baby4", withExtension: "mp3")!
    let ActionSound5 = NSBundle.mainBundle().URLForResource("baby5", withExtension: "mp3")!
    let ActionSound6 = NSBundle.mainBundle().URLForResource("baby6", withExtension: "mp3")!
    
    let ActionSound7 = NSBundle.mainBundle().URLForResource("baby7", withExtension: "mp3")!
    let ActionSound8 = NSBundle.mainBundle().URLForResource("baby8", withExtension: "mp3")!
    let ActionSound9 = NSBundle.mainBundle().URLForResource("baby9", withExtension: "mp3")!
    let ActionSound10 = NSBundle.mainBundle().URLForResource("baby10", withExtension: "mp3")!
    let ActionSound11 = NSBundle.mainBundle().URLForResource("baby11", withExtension: "mp3")!
    let ActionSound12 = NSBundle.mainBundle().URLForResource("baby12", withExtension: "mp3")!
    
    let ActionSound13 = NSBundle.mainBundle().URLForResource("baby13", withExtension: "mp3")!
    let ActionSound14 = NSBundle.mainBundle().URLForResource("baby14", withExtension: "mp3")!
    let ActionSound15 = NSBundle.mainBundle().URLForResource("baby15", withExtension: "mp3")!
    let ActionSound16 = NSBundle.mainBundle().URLForResource("baby16", withExtension: "mp3")!
    
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
    
    @IBAction func Action5() {
        soundPlayer(ActionSound5)
    }
    
    @IBAction func Action6() {
        soundPlayer(ActionSound6)
    }
    
    @IBAction func Action7() {
        soundPlayer(ActionSound7)
    }
    
    @IBAction func Action8() {
        soundPlayer(ActionSound8)
    }
    
    @IBAction func Action9() {
        soundPlayer(ActionSound9)
    }
    
    @IBAction func Action10() {
        soundPlayer(ActionSound10)
    }
    
    @IBAction func Action11() {
        soundPlayer(ActionSound11)
    }
    
    @IBAction func Action12() {
        soundPlayer(ActionSound12)
    }
    
    @IBAction func Action13() {
        soundPlayer(ActionSound13)
    }
    
    @IBAction func Action14() {
        soundPlayer(ActionSound14)
    }
    
    @IBAction func Action15() {
        soundPlayer(ActionSound15)
    }
    
    @IBAction func Action16() {
       soundPlayer(ActionSound16)
    }
    
    func soundPlayer(path: NSURL) {
        soundPlayer = AVAudioPlayer(contentsOfURL: path, error: nil)
        soundPlayer.stop()
        soundPlayer.prepareToPlay()
        soundPlayer.volume = 1.0
        soundPlayer.play()
    }
}

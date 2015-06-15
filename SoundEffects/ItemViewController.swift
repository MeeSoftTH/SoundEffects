//
//  ItemViewController1.swift
//  SoundEffect
//
//  Created by Pawarit Bunrith on 6/2/2558 BE.
//  Copyright (c) 2558 Pawarit Bunrith. All rights reserved.
//

import UIKit
import AVFoundation

class ItemViewController: UIViewController {
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
    let ActionSound17 = NSBundle.mainBundle().URLForResource("baby17", withExtension: "mp3")!
    let ActionSound18 = NSBundle.mainBundle().URLForResource("baby18", withExtension: "mp3")!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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

    func soundPlayer(path: NSURL) {
        soundPlayer = AVAudioPlayer(contentsOfURL: path, error: nil)
        soundPlayer.stop()
        soundPlayer.prepareToPlay()
        soundPlayer.play()
    }
    
}

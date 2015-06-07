//
//  ItemViewController3.swift
//  SoundEffect
//
//  Created by Pawarit Bunrith on 6/2/2558 BE.
//  Copyright (c) 2558 Pawarit Bunrith. All rights reserved.
//

import UIKit
import AVFoundation

class ItemViewController3: UIViewController {
    var soundPlayer = AVAudioPlayer()
    
    let ActionSound1 = NSBundle.mainBundle().URLForResource("baby13", withExtension: "mp3")!
    let ActionSound2 = NSBundle.mainBundle().URLForResource("baby14", withExtension: "mp3")!
    let ActionSound3 = NSBundle.mainBundle().URLForResource("baby15", withExtension: "mp3")!
    let ActionSound4 = NSBundle.mainBundle().URLForResource("baby16", withExtension: "mp3")!
    let ActionSound5 = NSBundle.mainBundle().URLForResource("baby17", withExtension: "mp3")!
    let ActionSound6 = NSBundle.mainBundle().URLForResource("baby18", withExtension: "mp3")!
    
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
    
    func soundPlayer(path: NSURL) {
        soundPlayer = AVAudioPlayer(contentsOfURL: path, error: nil)
        soundPlayer.prepareToPlay()
        soundPlayer.play()
    }

}

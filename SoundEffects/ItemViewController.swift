//
//  ItemViewController1.swift
//  SoundEffect
//
//  Created by Pawarit Bunrith on 6/2/2558 BE.
//  Copyright (c) 2558 Pawarit Bunrith. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

protocol SelectItemProtocol {
    func settingUIPage(audioPath: String, imagePath: String, isVibrate: Bool, UIIndex: Int)
}

class ItemViewController: UIViewController {
    var soundPlayer = AVAudioPlayer()
    
    let isItemsAdd = AppSetting.defaultVar.isAddItem
        
    var index: Int!
    
    // Audio path
    // Page 1
    var ActionSound1: String =  "audio1"
    var ActionSound2: String =  "audio2"
    var ActionSound3: String =  "audio3"
    var ActionSound4: String =  "audio4"
    var ActionSound5: String =  "audio5"
    var ActionSound6: String =  "audio6"
    
    
    // Page 2audio7
    var ActionSound7: String =  "audio7"
    var ActionSound8: String =  "audio8"
    var ActionSound9: String =  "audio9"
    var ActionSound10: String =  "audio10"
    var ActionSound11: String =  "audio11"
    var ActionSound12: String =  "audio12"
    
    
    // Page 3
    var ActionSound13: String =  "audio13"
    var ActionSound14: String =  "audio14"
    var ActionSound15: String =  "audio15"
    var ActionSound16: String =  "audio16"
    var ActionSound17: String =  "audio17"
    var ActionSound18: String =  "audio18"
    
    // Image Path
    // Page 1
    var img1: String =  "img0"
    var img2: String =  "img2"
    var img3: String =  "img3"
    var img4: String =  "img4"
    var img5: String =  "img5"
    var img6: String =  "img6"
    
    // Page 2
    var img7: String =  "img7"
    var img8: String =  "img8"
    var img9: String =  "img9"
    var img10: String =  "img10"
    var img11: String =  "img11"
    var img12: String =  "img12"
    
    // Page 3
    var img13: String =  "img13"
    var img14: String =  "img14"
    var img15: String =  "img15"
    var img16: String =  "img16"
    var img17: String =  "img17"
    var img18: String =  "img18"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("Is add items = \(isItemsAdd)")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Page 1
    @IBAction func Action1(sender: UIButton) {
        self.index = 1
        if isItemsAdd == true {
            showDialog(ActionSound1 , imagePath: img1)
        }else {
            AudioPlayer(ActionSound1)
        }
    }
    
    @IBAction func Action2(sender: UIButton) {
        self.index = 2
        if isItemsAdd == true{
            showDialog(ActionSound2 , imagePath: img2)
        }else {
            AudioPlayer(ActionSound2)
        }
    }
    
    @IBAction func Action3(sender: UIButton) {
        self.index = 3
        if isItemsAdd == true {
            showDialog(ActionSound3 , imagePath: img3)
        }else {
            AudioPlayer(ActionSound3)
        }
    }
    
    @IBAction func Action4(sender: UIButton) {
        self.index = 4
        if isItemsAdd == true {
            showDialog(ActionSound4 , imagePath: img4)
        }else {
            AudioPlayer(ActionSound4)
        }
    }
    
    @IBAction func Action5(sender: UIButton) {
        self.index = 5
        if isItemsAdd == true {
            showDialog(ActionSound5 , imagePath: img5)
        }else {AudioPlayer(ActionSound5)
        }
    }
    
    @IBAction func Action6(sender: UIButton) {
        self.index = 6
        if isItemsAdd == true {
            showDialog(ActionSound6 , imagePath: img6)
        }else {
            AudioPlayer(ActionSound6)
        }
    }
    
    // Page 2
    @IBAction func Action7(sender: UIButton) {
        self.index = 7
        if isItemsAdd == true {
            showDialog(ActionSound7 , imagePath: img7)
        }else {
            AudioPlayer(ActionSound7)
        }
    }
    
    @IBAction func Action8(sender: UIButton) {
        self.index = 8
        if isItemsAdd == true {
            showDialog(ActionSound8 , imagePath: img8)
        }else {
            AudioPlayer(ActionSound8)
        }
    }
    
    @IBAction func Action9(sender: UIButton) {
        self.index = 9
        if isItemsAdd == true {
            showDialog(ActionSound9 , imagePath: img9)
        }else {
            AudioPlayer(ActionSound9)
        }
    }
    
    @IBAction func Action10(sender: UIButton) {
        self.index = 10
        if isItemsAdd == true {
            showDialog(ActionSound10 , imagePath: img10)
        }else {
            AudioPlayer(ActionSound10)
        }
    }
    
    @IBAction func Action11(sender: UIButton) {
        self.index = 11
        if isItemsAdd == true {
            showDialog(ActionSound11 , imagePath: img11)
        }else {AudioPlayer(ActionSound11)
        }
    }
    
    @IBAction func Action12(sender: UIButton) {
        self.index = 12
        if isItemsAdd == true {
            showDialog(ActionSound12 , imagePath: img12)
        }else {
            AudioPlayer(ActionSound12)
        }
    }
    
    // Page 3
    @IBAction func Action13(sender: UIButton) {
        self.index = 13
        if isItemsAdd == true {
            showDialog(ActionSound13 , imagePath: img13)
        }else {
            AudioPlayer(ActionSound13)
        }
    }
    
    @IBAction func Action14(sender: UIButton) {
        self.index = 14
        if isItemsAdd == true {
            showDialog(ActionSound14 , imagePath: img14)
        }else {
            AudioPlayer(ActionSound14)
        }
    }
    
    @IBAction func Action15(sender: UIButton) {
        self.index = 15
        if isItemsAdd == true {
            showDialog(ActionSound15 , imagePath: img15)
        }else {
            AudioPlayer(ActionSound15)
        }
    }
    
    @IBAction func Action16(sender: UIButton) {
        self.index = 16
        if isItemsAdd == true {
            showDialog(ActionSound16 , imagePath: img16)
        }else {
            AudioPlayer(ActionSound16)
        }
    }
    
    @IBAction func Action17(sender: UIButton) {
        self.index = 17
        if isItemsAdd == true {
            showDialog(ActionSound17 , imagePath: img17)
        }else {AudioPlayer(ActionSound17)
        }
    }
    
    @IBAction func Action18(sender: UIButton) {
        self.index = 18
        if isItemsAdd == true {
            showDialog(ActionSound18 , imagePath: img18)
        }else {
            AudioPlayer(ActionSound18)
        }
    }
    
    func AudioPlayer(strPath: String) {
        
        var error: NSError?
        
        let resourcePath = NSBundle.mainBundle().URLForResource(strPath, withExtension: "mp3")!
        
        soundPlayer = AVAudioPlayer(contentsOfURL: resourcePath, error: nil)
        
        if let err = error {
            println("AVAudioPlayer error: \(err.localizedDescription)")
        } else {
            println("AVAudioPlayer Play: \(resourcePath)")
            soundPlayer.stop()
            soundPlayer.prepareToPlay()
            soundPlayer.volume = 1.0
            soundPlayer.play()
            
            if self.index >= 13 {
                print("Is Vibrate")
                AudioServicesPlaySystemSound(SystemSoundID(kSystemSoundID_Vibrate))
            }
        }
    }
    
    
    func showDialog(audioPath: String, imagePath: String){
        
        println("last Controller \(AppSetting.defaultVar.controller)")
        
        var chooseDialog = UIAlertController(title: "Options", message: "Choose or play audio ?",preferredStyle: UIAlertControllerStyle.ActionSheet
        )
        
        chooseDialog.addAction(UIAlertAction(title: "Choose", style: .Default, handler: { (action: UIAlertAction!) in
            
            println(AppSetting.defaultVar.addIndex)
            var itemSlot = "slot" + String(AppSetting.defaultVar.addIndex)
            
            var vibrateIndex = self.index >= 13 ? true : false
            
            AppSetting.defaultVar.controller!.settingUIPage(audioPath, imagePath: imagePath, isVibrate: vibrateIndex, UIIndex: AppSetting.defaultVar.addIndex)
            self.navigationController!.popViewControllerAnimated(true)
            
        }))
        
        chooseDialog.addAction(UIAlertAction(title: "Play", style: .Default, handler: { (action: UIAlertAction!) in
            
            self.AudioPlayer(audioPath)
            
        }))
        
        chooseDialog.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        
        presentViewController(chooseDialog, animated: true, completion: nil)
    }
}

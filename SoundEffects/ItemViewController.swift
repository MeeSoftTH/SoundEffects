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
    
    let isItemsAdd: Bool = DataSettingAndShare.MyDefaultVariables.isAddItem
    var index: Int = 0
    
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
    var img1: String =  "img1"
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
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Page 1
    @IBAction func Action1(sender: UIButton) {
        if isItemsAdd {
            self.index = 1
            showDialog(ActionSound1)
        }else {
            AudioPlayer(ActionSound1)
        }
    }
    
    @IBAction func Action2(sender: UIButton) {
        
        if isItemsAdd {
            self.index = 2
            showDialog(ActionSound2)
        }else {
            AudioPlayer(ActionSound2)
        }
    }
    
    @IBAction func Action3(sender: UIButton) {
        if isItemsAdd {
            self.index = 3
            showDialog(ActionSound3)
        }else {
           AudioPlayer(ActionSound3)
        }
    }
    
    @IBAction func Action4(sender: UIButton) {
        if isItemsAdd {
            self.index = 4
            showDialog(ActionSound4)
        }else {
           AudioPlayer(ActionSound4)
        }
    }
    
    @IBAction func Action5(sender: UIButton) {
        if isItemsAdd {
            self.index = 5
            showDialog(ActionSound5)
        }else {AudioPlayer(ActionSound5)
        }
    }
    
    @IBAction func Action6(sender: UIButton) {
        if isItemsAdd {
            self.index = 6
            showDialog(ActionSound6)
        }else {
            AudioPlayer(ActionSound6)
        }
    }
    
    // Page 2
    @IBAction func Action7(sender: UIButton) {
        if isItemsAdd {
            self.index = 7
            showDialog(ActionSound7)
        }else {
            AudioPlayer(ActionSound7)
        }
    }
    
    @IBAction func Action8(sender: UIButton) {
        if isItemsAdd {
            self.index = 8
            showDialog(ActionSound8)
        }else {
            AudioPlayer(ActionSound8)
        }
    }
    
    @IBAction func Action9(sender: UIButton) {
        if isItemsAdd {
            self.index = 9
            showDialog(ActionSound9)
        }else {
            AudioPlayer(ActionSound9)
        }
    }
    
    @IBAction func Action10(sender: UIButton) {
        if isItemsAdd {
            self.index = 10
            showDialog(ActionSound10)
        }else {
            AudioPlayer(ActionSound10)
        }
    }
    
    @IBAction func Action11(sender: UIButton) {
        if isItemsAdd {
            self.index = 11
            showDialog(ActionSound11)
        }else {AudioPlayer(ActionSound11)
        }
    }
    
    @IBAction func Action12(sender: UIButton) {
        if isItemsAdd {
            self.index = 12
            showDialog(ActionSound12)
        }else {
            AudioPlayer(ActionSound12)
        }
    }

    // Page 3
    @IBAction func Action13(sender: UIButton) {
        if isItemsAdd {
            self.index = 13
            showDialog(ActionSound13)
        }else {
            AudioPlayer(ActionSound13)
        }
    }
    
    @IBAction func Action14(sender: UIButton) {
        
        if isItemsAdd {
            self.index = 14
            showDialog(ActionSound14)
        }else {
            AudioPlayer(ActionSound14)
        }
    }
    
    @IBAction func Action15(sender: UIButton) {
        if isItemsAdd {
            self.index = 15
            showDialog(ActionSound15)
        }else {
            AudioPlayer(ActionSound15)
        }
    }

    @IBAction func Action16(sender: UIButton) {
        if isItemsAdd {
            self.index = 16
            showDialog(ActionSound16)
        }else {
            AudioPlayer(ActionSound16)
        }
    }
    
    @IBAction func Action17(sender: UIButton) {
        if isItemsAdd {
            self.index = 17
            showDialog(ActionSound17)
        }else {AudioPlayer(ActionSound17)
        }
    }
    
    @IBAction func Action18(sender: UIButton) {
        if isItemsAdd {
            self.index = 18
            showDialog(ActionSound18)
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
        }
    }
    
    
    func showDialog(path: String){
        var chooseDialog = UIAlertController(title: "Options", message: "Choose or play audio ?",preferredStyle: UIAlertControllerStyle.ActionSheet
        )
        
        chooseDialog.addAction(UIAlertAction(title: "Choose", style: .Default, handler: { (action: UIAlertAction!) in
            
            let appGroupId: String = "group.th.co.meesoft.soundeffect"
            let userDefind: NSUserDefaults! = NSUserDefaults(suiteName: appGroupId)

            var itemSlot = "slot" + String(DataSettingAndShare.MyDefaultVariables.itemIndex)
            
            if self.index == 1 {
                
                let sound_slot1: String = self.ActionSound1 as String
                let imgUrl_slot1: String = self.img1 as String
                userDefind.setObject([sound_slot1, imgUrl_slot1], forKey: itemSlot)
                
            }else if self.index == 2 {
                
                let sound_slot2: String = self.ActionSound2 as String
                let imgUrl_slot2: String = self.img2 as String
                userDefind.setObject([sound_slot2, imgUrl_slot2], forKey: itemSlot)
                
            } else if self.index == 3 {
                
                let sound_slot3: String = self.ActionSound3 as String
                let imgUrl_slot3: String = self.img3 as String
                userDefind.setObject([sound_slot3, imgUrl_slot3], forKey: itemSlot)
                
            }else if self.index == 4 {
                
                let sound_slot4: String = self.ActionSound4 as String
                let imgUrl_slot4: String = self.img4 as String
                userDefind.setObject([sound_slot4, imgUrl_slot4], forKey: itemSlot)
                
            }else if self.index == 5 {
                
                let sound_slot5: String = self.ActionSound5 as String
                let imgUrl_slot5: String = self.img5 as String
                userDefind.setObject([sound_slot5, imgUrl_slot5], forKey: itemSlot)
                
            }else if self.index == 6 {
                
                let sound_slot6: String = self.ActionSound6 as String
                let imgUrl_slot6: String = self.img6 as String
                userDefind.setObject([sound_slot6, imgUrl_slot6], forKey: itemSlot)
                
            }else if self.index == 7 {
                
                let sound_slot7: String = self.ActionSound7 as String
                let imgUrl_slot7: String = self.img7 as String
                userDefind.setObject([sound_slot7, imgUrl_slot7], forKey: itemSlot)
                
            }else if self.index == 8 {
                
                let sound_slot8: String = self.ActionSound8 as String
                let imgUrl_slot8: String = self.img8 as String
                userDefind.setObject([sound_slot8, imgUrl_slot8], forKey: itemSlot)
                
            }else if self.index == 9 {
                
                let sound_slot9: String = self.ActionSound9 as String
                let imgUrl_slot9: String = self.img9 as String
                userDefind.setObject([sound_slot9, imgUrl_slot9], forKey: itemSlot)
                
            }else if self.index == 10 {
                
                let sound_slot10: String = self.ActionSound10 as String
                let imgUrl_slot10: String = self.img10 as String
                userDefind.setObject([sound_slot10, imgUrl_slot10], forKey: itemSlot)
                
            }else if self.index == 11 {
                
                let sound_slot11: String = self.ActionSound11 as String
                let imgUrl_slot11: String = self.img11 as String
                userDefind.setObject([sound_slot11, imgUrl_slot11], forKey: itemSlot)
                
            }else if self.index == 12 {
                
                let sound_slot12: String = self.ActionSound12 as String
                let imgUrl_slot12: String = self.img12 as String
                userDefind.setObject([sound_slot12, imgUrl_slot12], forKey: itemSlot)
                
            }else if self.index == 13 {
                
                let sound_slot13: String = self.ActionSound13 as String
                let imgUrl_slot13: String = self.img13 as String
                userDefind.setObject([sound_slot13, imgUrl_slot13], forKey: itemSlot)
                
            }else if self.index == 14 {
                
                let sound_slot14: String = self.ActionSound14 as String
                let imgUrl_slot14: String = self.img14 as String
                userDefind.setObject([sound_slot14, imgUrl_slot14], forKey: itemSlot)
                
            }else if self.index == 15 {
                
                let sound_slot15: String = self.ActionSound15 as String
                let imgUrl_slot15: String = self.img15 as String
                userDefind.setObject([sound_slot15, imgUrl_slot15], forKey: itemSlot)
                
            }else if self.index == 16 {
                
                let sound_slot16: String = self.ActionSound16 as String
                let imgUrl_slot16: String = self.img16 as String
                userDefind.setObject([sound_slot16, imgUrl_slot16], forKey: itemSlot)
                
            }else if self.index == 17 {
                
                let sound_slot17: String = self.ActionSound17 as String
                let imgUrl_slot17: String = self.img17 as String
                userDefind.setObject([sound_slot17, imgUrl_slot17], forKey: itemSlot)
                
            }else if self.index == 18 {
                
                let sound_slot18: String = self.ActionSound18 as String
                let imgUrl_slot18: String = self.img18 as String
                userDefind.setObject([sound_slot18, imgUrl_slot18], forKey: itemSlot)
                
            }
            
            userDefind!.synchronize()
            println(userDefind!.synchronize())
            self.navigationController!.popViewControllerAnimated(true)
        }))
        
        chooseDialog.addAction(UIAlertAction(title: "Play", style: .Default, handler: { (action: UIAlertAction!) in
            
           self.AudioPlayer(path)
            
        }))
        
        chooseDialog.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        
        presentViewController(chooseDialog, animated: true, completion: nil)
    }
    
}

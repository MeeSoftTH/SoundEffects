//
//  WatchItemViewController1.swift
//  SoundEffects
//
//  Created by Pawarit_Bunrith on 6/17/2558 BE.
//  Copyright (c) 2558 Pawarit_Bunrith. All rights reserved.
//

import UIKit

class WatchItemViewController1: UIViewController {
    
    let appGroupId: String = "group.th.co.meesoft.soundeffect"
    var index: Int = 0
    
    @IBOutlet weak var image1: UIButton?
    @IBOutlet weak var image2: UIButton?
    @IBOutlet weak var image3: UIButton?
    @IBOutlet weak var image4: UIButton?
    
    
    
    var ActionSound1 =  String()
    var ActionSound2 =  String()
    var ActionSound3 =  String()
    var ActionSound4 =  String()
   

    
    override func viewDidLoad() {
        super.viewDidLoad()
        updatePath()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Action1(sender: UIButton) {
        self.index = 1
        openAddItemView()

    }
    
    @IBAction func Action2(sender: UIButton) {
        self.index = 2
        openAddItemView()
    }
    
    @IBAction func Action3(sender: UIButton) {
        self.index = 3
        openAddItemView()

    }
    
    @IBAction func Action4(sender: UIButton) {
        self.index = 4
        openAddItemView()
    }

    
    
    func openAddItemView() {
        
        DataSettingAndShare.MyDefaultVariables.isAddItem = true
        DataSettingAndShare.MyDefaultVariables.itemIndex = self.index
        
        let secondViewController = self.storyboard!.instantiateViewControllerWithIdentifier("PageViewController") as! ViewController
        
        self.navigationController!.presentViewController(secondViewController, animated: true, completion : nil)
        //updatePath()
        }
    
    func updatePath() {
        let userDefind: NSUserDefaults! = NSUserDefaults(suiteName: self.appGroupId)
       
        let slotPath: AnyObject? = userDefind?.objectForKey("slot1")
        if slotPath != nil {
        var slot1 = slotPath as! NSArray
        var slotPath1 = slot1.objectAtIndex(0) as! NSString
        ActionSound1 = slotPath1 as String
        var slotImage1 = slot1.objectAtIndex(1) as! NSString
        image1!.setImage(UIImage(named: slotImage1 as String), forState: UIControlState.Normal)
        }
        
        var sound2 = userDefind?.objectForKey("slot2") as! NSArray
        var soundPath2 = sound2.objectAtIndex(0) as! NSString
        ActionSound2 = soundPath2 as String
        
        var imagePath2 = sound2.objectAtIndex(1) as! NSString
        image2!.setImage(UIImage(named: imagePath2 as String), forState:UIControlState.Normal)
        
        var sound3 = userDefind?.objectForKey("slot3") as! NSArray
        var soundPath3 = sound3.objectAtIndex(0) as! NSString
        ActionSound3 = soundPath3 as String
        
        var imagePath3 = sound3.objectAtIndex(1) as! NSString
        image3!.setImage(UIImage(named: imagePath3 as String), forState:UIControlState.Normal)
        
        var sound4 = userDefind?.objectForKey("slot4") as! NSArray
        var soundPath4 = sound4.objectAtIndex(0) as! NSString
        ActionSound4 = soundPath4 as String
        
        var imagePath4 = sound4.objectAtIndex(1) as! NSString
        image4!.setImage(UIImage(named: imagePath4 as String), forState:UIControlState.Normal)
        
        }

}

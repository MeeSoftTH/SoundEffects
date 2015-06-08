//
//  CustomViewController.swift
//  SoundEffects
//
//  Created by Pawarit_Bunrith on 6/8/2558 BE.
//  Copyright (c) 2558 Pawarit_Bunrith. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Add1(sender: UIButton) {
        showDialog()
    }
    
    @IBAction func Add2(sender: UIButton) {
        showDialog()
    }
    
    @IBAction func Add3(sender: UIButton) {
        showDialog()
    }
    
    @IBAction func Add4(sender: UIButton) {
        showDialog()
    }
    
    @IBAction func Add5(sender: UIButton) {
        showDialog()
    }
    
    @IBAction func Add6(sender: UIButton) {
        showDialog()
    }
    
    
    func showDialog(){
        var chooseDialog = UIAlertController(title: "Add audio", message: "Choose audio from?",preferredStyle: UIAlertControllerStyle.ActionSheet
        )
        
        chooseDialog.addAction(UIAlertAction(title: "Microphone", style: .Default, handler: { (action: UIAlertAction!) in
            
            var storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            
            var vc: UIViewController = storyboard.instantiateViewControllerWithIdentifier("RecordViewController") as! UIViewController
            self.presentViewController(vc, animated: true, completion: nil)
        }))
        
        /*chooseDialog.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: { (action: UIAlertAction!) in
        println("Handle Cancel Logic here")
        }))*/
        
        chooseDialog.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: { (action: UIAlertAction!) in
            println("Handle Cancel Logic here")
        }))
        
        presentViewController(chooseDialog, animated: true, completion: nil)
    }
}

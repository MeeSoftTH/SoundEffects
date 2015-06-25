//
//  ViewController.swift
//  SoundEffect
//
//  Created by Pawarit Bunrith on 5/18/2558 BE.
//  Copyright (c) 2558 Pawarit Bunrith. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playAction(sender: UIButton) {
        
        var isItemsAdd: Bool = AppSetting.defaultVar.isAddItem
        
        isItemsAdd = false
        
        let PageViewController = self.storyboard!.instantiateViewControllerWithIdentifier("ViewController") as! UIViewController
        
        self.navigationController!.pushViewController(PageViewController, animated: true)
        
    }
    
    @IBAction func watchAction(sender: UIButton) {
        var isItemsAdd: Bool = AppSetting.defaultVar.isAddItem
        
        isItemsAdd = true
        
        let AddWatchViewController = self.storyboard!.instantiateViewControllerWithIdentifier("WatchViewController") as! UIViewController
        
        self.navigationController!.pushViewController(AddWatchViewController, animated: true)
    }
    
    @IBAction func puchase(sender: UIButton) {
        
        let appPurchaseController = self.storyboard!.instantiateViewControllerWithIdentifier("appPurchase") as! UIViewController
        
        self.presentViewController(appPurchaseController, animated: true, completion: nil)
    }
    

}


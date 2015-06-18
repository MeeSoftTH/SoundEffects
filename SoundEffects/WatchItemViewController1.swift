//
//  WatchItemViewController1.swift
//  SoundEffects
//
//  Created by Pawarit_Bunrith on 6/17/2558 BE.
//  Copyright (c) 2558 Pawarit_Bunrith. All rights reserved.
//

import UIKit

class WatchItemViewController1: UIViewController {
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button1(sender: AnyObject) {
        self.index = 1
        openAddItemView()
    }
    
    
    func openAddItemView() {
        
        DataSettingAndShare.MyDefaultVariables.isAddItem = true
        
        let secondViewController = self.storyboard!.instantiateViewControllerWithIdentifier("PageViewController") as! ViewController
        
        self.navigationController!.pushViewController(secondViewController, animated: true)
    }
}

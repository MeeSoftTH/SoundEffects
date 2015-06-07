//
//  BrowseViewController.swift
//  SoundEffect
//
//  Created by Pawarit Bunrith on 5/28/2558 BE.
//  Copyright (c) 2558 Pawarit Bunrith. All rights reserved.
//

import UIKit

class BrowseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
   
    @IBAction func ActionCancel(segue:UIStoryboardSegue) {
        dismissViewControllerAnimated(true, completion: nil)
    }
   
}

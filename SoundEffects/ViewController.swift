//
//  ViewController.swift
//  SoundEffect
//
//  Created by Pawarit Bunrith on 6/2/2558 BE.
//  Copyright (c) 2558 Pawarit Bunrith. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var identifiers: NSArray = ["ItemViewController1", "ItemViewController2", "ItemViewController3"]
    var currentIndex:UInt = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Category"
        //self.navigationController?.navigationItem.backBarButtonItem?.title = "Back"
        self.dataSource = self
        self.delegate = self
        
        let startingViewController = self.viewControllerAtIndex(0)
        let viewControllers: Array = [startingViewController]
        self.setViewControllers(viewControllers, direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
        
        
        
    }
    
    func viewControllerAtIndex(index: Int) -> UIViewController! {
        
       currentIndex = UInt(index)
        
        if index == 0 {
            
             println("This class is = ItemViewController1 \n ---------------------------------------------------------")
            
            return self.storyboard?.instantiateViewControllerWithIdentifier("ItemViewController1") as!
            UIViewController
           
            
        }else if index == 1 {
            
            println("This class is = ItemViewController2 \n ---------------------------------------------------------")
            
            return self.storyboard?.instantiateViewControllerWithIdentifier("ItemViewController2") as!
            UIViewController
            
            
        }else if index == 2 {
            
            println("This class is = ItemViewController3 \n ---------------------------------------------------------")
            
            return self.storyboard?.instantiateViewControllerWithIdentifier("ItemViewController3") as!
            UIViewController
            
        }
        
        
        
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        let identifier = viewController.restorationIdentifier
        //println("Identifier before \(identifier)")
        
        var index = self.identifiers.indexOfObject(identifier!)
        println("Index before \(index)")
        
        if index == 0 || index == NSNotFound{
            
            return nil
            
        }
          index--
            println("Index current \(index)")
            return self.viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
    
        let identifier = viewController.restorationIdentifier
        
        //println("Identifier after \(identifier)")
        
        var index = self.identifiers.indexOfObject(identifier!)
        
        println("Index after \(index)")

        if index == identifiers.count - 1 {
            
            return nil
            
        }
           index++
        println("Index current \(index)")
            return self.viewControllerAtIndex(index)
    }
    
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return self.identifiers.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
}
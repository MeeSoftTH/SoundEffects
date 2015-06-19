//
//  AddWatchViewController.swift
//  SoundEffects
//
//  Created by Pawarit_Bunrith on 6/15/2558 BE.
//  Copyright (c) 2558 Pawarit_Bunrith. All rights reserved.
//

import UIKit

class AddWatchViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var identifiers: NSArray = ["AddWatch1", "AddWatch2", "AddWatch3", "AddWatch4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Add to watch"
        //self.navigationController?.navigationItem.backBarButtonItem?.title = "Back"
        self.dataSource = self
        self.delegate = self
        
        
        let startingViewController = self.viewControllerAtIndex(0)
        let viewControllers: Array = [startingViewController]
        self.setViewControllers(viewControllers, direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
    }

    
    func viewControllerAtIndex(index: Int) -> UIViewController! {
        
        if index == 0 {
            
            println("This class is = AddWatch1 \n---------------------------------------------------------")
            return self.storyboard?.instantiateViewControllerWithIdentifier("AddWatch1") as!
            UIViewController
            
            
        }else if index == 1 {
            
            println("This class is = AddWatch2 \n ---------------------------------------------------------")
            
            return self.storyboard?.instantiateViewControllerWithIdentifier("AddWatch2") as!
            UIViewController
            
            
        }else if index == 2 {
            
            println("This class is = AddWatch3 \n ---------------------------------------------------------")
            
            return self.storyboard?.instantiateViewControllerWithIdentifier("AddWatch3") as!
            UIViewController
            
        }else if index == 3 {
            
            println("This class is = AddWatch4 \n ---------------------------------------------------------")
            
            return self.storyboard?.instantiateViewControllerWithIdentifier("AddWatch4") as!
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
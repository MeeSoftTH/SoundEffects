//
//  ViewController.swift
//  SoundEffect
//
//  Created by Pawarit Bunrith on 6/2/2558 BE.
//  Copyright (c) 2558 Pawarit Bunrith. All rights reserved.
//

import UIKit
import Foundation

class AddWatchViewController: UIViewController, UIPageViewControllerDataSource {
    private var pageViewController: UIPageViewController?
    
    var leftButton: String!
    
    var Watch1: UIViewController!
    var Watch2: UIViewController!
    var Watch3: UIViewController!
    var Watch4: UIViewController!
    
    let identifiers: NSArray = ["Watch1", "Watch2", "Watch3", "Watch4"]
    let pageTitles = ["My Category 1", "My Category 2", "My Category 3", "My Category 4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = self.pageTitles[0]
        
        
        let pageController = self.storyboard!.instantiateViewControllerWithIdentifier("WatchController") as!UIPageViewController
        
        pageController.dataSource = self
        
        let startingViewController = self.viewControllerAtIndex(0)
        let viewControllers: Array = [startingViewController]
        pageController.setViewControllers(viewControllers, direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
        
        pageViewController = pageController
        addChildViewController(pageViewController!)
        self.view.addSubview(pageViewController!.view)
        pageViewController!.didMoveToParentViewController(self)
        
        var actionRefresh = UIBarButtonItem(barButtonSystemItem: .Refresh, target: self, action: "actionRefresh")
        navigationItem.rightBarButtonItem = actionRefresh
        
    }
    
    func actionRefresh() {
        WatchItemViewController1().viewDidLoad()
        WatchItemViewController2().viewDidLoad()
        WatchItemViewController3().viewDidLoad()
        WatchItemViewController4().viewDidLoad()
    }
    
    func viewControllerAtIndex(index: Int) -> UIViewController! {
        
        if index == 0 {
            
            println("This class is \(index)")
            
            Watch1 = self.storyboard?.instantiateViewControllerWithIdentifier("Watch1") as!
            UIViewController
            
            return Watch1
            
            
        }else if index == 1 {
            
            
            
            println("This class is \(index)")
            
            Watch2 = self.storyboard?.instantiateViewControllerWithIdentifier("Watch2") as!
            UIViewController
            
            return Watch2
            
            
            
        }else if index == 2 {
            
            
            
            println("This class is \(index)")
            
            Watch3 = self.storyboard?.instantiateViewControllerWithIdentifier("Watch3") as!
            UIViewController
            
            return Watch3
            
            
        }else if index == 3 {
            
            
            
            println("This class is \(index)")
            
            Watch4 = self.storyboard?.instantiateViewControllerWithIdentifier("Watch4") as!
            UIViewController
            
            return Watch4
            
            
        }
        
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        let identifier = viewController.restorationIdentifier
        //println("Identifier before \(identifier)")
        
        var index = self.identifiers.indexOfObject(identifier!)
        self.title = self.pageTitles[index]
        
        if index == 0 || index == NSNotFound{
            self.title = self.pageTitles[0]
            return nil
            
        }
        
        index--
        //println("Index current \(index)")
        return self.viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let identifier = viewController.restorationIdentifier
        
        //println("Identifier after \(identifier)")
        
        var index = self.identifiers.indexOfObject(identifier!)
        
        self.title = self.pageTitles[index]
        
        if index == identifiers.count - 1 {
            self.title = self.pageTitles[3]
            
            return nil
            
        }
        
        index++
        //println("Index current \(index)")
        return self.viewControllerAtIndex(index)
    }
    
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return self.identifiers.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
}
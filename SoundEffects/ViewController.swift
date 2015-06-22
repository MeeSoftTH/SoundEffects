//
//  ViewController.swift
//  SoundEffect
//
//  Created by Pawarit Bunrith on 6/2/2558 BE.
//  Copyright (c) 2558 Pawarit Bunrith. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UIPageViewControllerDataSource {
    private var pageViewController: UIPageViewController?
    
    let isItemsAdd: Bool = DataSettingAndShare.MyDefaultVariables.isAddItem
    
    var leftButton: String!

    var pageContentViewController1: UIViewController!
    var pageContentViewController2: UIViewController!
    var pageContentViewController3: UIViewController!
    
    
    let identifiers: NSArray = ["ItemViewController1", "ItemViewController2", "ItemViewController3"]
    let pageTitles = ["Category 1", "Category 2", "Category 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = self.pageTitles[0]
        
        
        let pageController = self.storyboard!.instantiateViewControllerWithIdentifier("PageViewController") as!UIPageViewController
        
        pageController.dataSource = self
        
        let startingViewController = self.viewControllerAtIndex(0)
        let viewControllers: Array = [startingViewController]
        pageController.setViewControllers(viewControllers, direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
        
        pageViewController = pageController
        addChildViewController(pageViewController!)
        self.view.addSubview(pageViewController!.view)
        pageViewController!.didMoveToParentViewController(self)
        
        if isItemsAdd {
            leftButton = "Cancel"
        }else {
            leftButton = "< Back"
        }
        
        var actionCancel = UIBarButtonItem(title: leftButton, style: UIBarButtonItemStyle.Plain, target: self, action: "actionCancel") //Use a selector
        navigationItem.leftBarButtonItem = actionCancel
        
    }
    
    
    func actionCancel() {
        
        if DataSettingAndShare.MyDefaultVariables.isAddItem == true {
            DataSettingAndShare.MyDefaultVariables.isAddItem = false
        }
        
        self.navigationController!.popViewControllerAnimated(true)
        
    }
    
    
    func viewControllerAtIndex(index: Int) -> UIViewController! {
        
        if index == 0 {
            
            println("This class is \(index)")
            
            pageContentViewController1 = self.storyboard?.instantiateViewControllerWithIdentifier("ItemViewController1") as!
            UIViewController
            
            return pageContentViewController1
            
            
        }else if index == 1 {
            
            
            
             println("This class is \(index)")
            
            pageContentViewController2 = self.storyboard?.instantiateViewControllerWithIdentifier("ItemViewController2") as!
            UIViewController
            
            return pageContentViewController2
            
            
            
        }else if index == 2 {
            
            
            
             println("This class is \(index)")
            
            pageContentViewController3 = self.storyboard?.instantiateViewControllerWithIdentifier("ItemViewController3") as!
            UIViewController
            
            return pageContentViewController3
            
            
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
            
            self.title = self.pageTitles[2]
            
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
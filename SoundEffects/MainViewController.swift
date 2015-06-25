//
//  ViewController.swift
//  SoundEffect
//
//  Created by Pawarit Bunrith on 5/18/2558 BE.
//  Copyright (c) 2558 Pawarit Bunrith. All rights reserved.
//

import UIKit
import StoreKit

class MainViewController: UIViewController, SKProductsRequestDelegate, SKPaymentTransactionObserver {
    
    
    @IBOutlet weak var unlockButton: UIButton!
    
    let groupId: String = "group.th.co.meesoft.soundeffect"
    let userDefind: NSUserDefaults! = NSUserDefaults(suiteName: "group.th.co.meesoft.soundeffect")
    let productId: String = "th.co.meesoft.soundeffect.unlockremote"
    
    var freeVersion: String = "Unlock to full version."
    var fullVertion: String = "This is full version."
    
    let isTestPur = AppSetting.defaultVar.isTest
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(SKPaymentQueue.canMakePayments()) {
            println("IAP is enabled, loading")
            var productID:NSSet = NSSet(objects: productId)
            var request: SKProductsRequest = SKProductsRequest(productIdentifiers: productID as Set<NSObject>)
            request.delegate = self
            request.start()
        } else {
            println("please enable IAPS")
        }
        
        updateUIState()
        
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
    
    @IBAction func serviceTest(sender: UIBarButtonItem) {
        
        let testing = self.storyboard!.instantiateViewControllerWithIdentifier("testing") as! UIViewController
        
        self.presentViewController(testing, animated: true, completion: nil)
    }
    
    
    @IBAction func watchAction(sender: UIButton) {
        var isItemsAdd: Bool = AppSetting.defaultVar.isAddItem
        
        isItemsAdd = true
        
        let AddWatchViewController = self.storyboard!.instantiateViewControllerWithIdentifier("WatchViewController") as! UIViewController
        
        self.navigationController!.pushViewController(AddWatchViewController, animated: true)
    }
    
    
    @IBAction func unlock(sender: UIButton) {
        
        var chooseDialog = UIAlertController(title: "Purchase to full varsion", message: "If unlock you can add audio to apple watch for 16 slots",preferredStyle: UIAlertControllerStyle.ActionSheet
        )
        
        chooseDialog.addAction(UIAlertAction(title: "Unlock Now - $0.99", style: .Destructive, handler: { (action: UIAlertAction!) in
            
            if self.isTestPur {
                // test purchase
                let userSetting: NSUserDefaults! = NSUserDefaults(suiteName: self.groupId)
                
                var isPurchased = self.userDefind.boolForKey("ispurchased") as Bool?
                
                if (isPurchased != nil && isPurchased == false) {
                    userSetting.setBool(true, forKey: "ispurchased")
                }else {
                    userSetting.setBool(false, forKey: "ispurchased")
                }
                self.updateUIState()
            }else {
                
                // purchase
                for product in self.list {
                    var prodID = product.productIdentifier
                    if(prodID == self.productId) {
                        self.p = product
                        self.makePurchase()
                        break;
                    }
                }
            }
            
        }))
        
        /*chooseDialog.addAction(UIAlertAction(title: "Restore purchase", style: .Default, handler: { (action: UIAlertAction!) in
        paymentQueueRestoreCompletedTransactionsFinished()
        
        }))*/
        
        chooseDialog.addAction(UIAlertAction(title: "Cancel", style: .Cancel, handler: nil))
        
        presentViewController(chooseDialog, animated: true, completion: nil)
    }
    
    func updateUIState() {
        if let isPurchase = userDefind.boolForKey("ispurchased") as Bool? {
            var tempTitle = isPurchase ? fullVertion : freeVersion
            var tempColor = isPurchase ? UIColor.grayColor() : UIColor.blueColor()
            
            unlockButton.setTitle(tempTitle, forState: UIControlState.Normal)
            //unlockButton.enabled = !isPurchase
            unlockButton.setTitleColor(tempColor, forState: UIControlState.Normal)
            
        }
    }
    
    // Purchase function
    
    var list = [SKProduct]()
    var p = SKProduct()
    
    func makePurchase() {
        println("purchasing: " + p.productIdentifier)
        var pay = SKPayment(product: p)
        SKPaymentQueue.defaultQueue().addTransactionObserver(self)
        SKPaymentQueue.defaultQueue().addPayment(pay as SKPayment)
    }
    
    func productsRequest(request: SKProductsRequest!, didReceiveResponse response: SKProductsResponse!) {
        println("product request")
        var myProduct = response.products
        
        for product in myProduct {
            println("product added")
            println(product.productIdentifier)
            println(product.localizedTitle)
            println(product.localizedDescription)
            println(product.price)
            
            list.append(product as! SKProduct)
        }
    }
    
    func paymentQueueRestoreCompletedTransactionsFinished(queue: SKPaymentQueue!) {
        println("transactions restored")
        var purchasedItemIDS = []
        for transaction in queue.transactions {
            var t: SKPaymentTransaction = transaction as! SKPaymentTransaction
            
            let prodID = t.payment.productIdentifier as String
            if(prodID == productId){
                println("Unlock to full version.")
                doUnlockFeatures()
            }
            else {
                println("IAP not setup")
            }
        }
    }
    
    func paymentQueue(queue: SKPaymentQueue!, updatedTransactions transactions: [AnyObject]!) {
        for transaction:AnyObject in transactions {
            var trans = transaction as! SKPaymentTransaction
            println(trans.error)
            
            switch trans.transactionState {
            case .Purchased:
                println("Buying success: Unlock features.")
                println(p.productIdentifier)
                
                let prodID = p.productIdentifier as String
                if(prodID == productId){
                    println("Unlock to full version.")
                    doUnlockFeatures()
                }
                else {
                    println("IAP not setup")
                }
                
                queue.finishTransaction(trans)
                break;
            case .Failed:
                println("buy error")
                queue.finishTransaction(trans)
                break;
            default:
                println("default")
                break;
                
            }
        }
    }
    
    func finishTransaction(trans:SKPaymentTransaction){
        println("finish trans")
        SKPaymentQueue.defaultQueue().finishTransaction(trans)
    }
    
    func paymentQueue(queue: SKPaymentQueue!, removedTransactions transactions: [AnyObject]!){
        println("remove trans");
    }
    
    func doUnlockFeatures(){
        let userSetting: NSUserDefaults! = NSUserDefaults(suiteName: groupId)
        userSetting.setBool(true, forKey: "ispurchased")
        updateUIState()
    }
}


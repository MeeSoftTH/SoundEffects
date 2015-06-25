//
//  PurchaseViewController.swift
//  SoundEffects
//
//  Created by Pawarit_Bunrith on 6/25/2558 BE.
//  Copyright (c) 2558 Pawarit_Bunrith. All rights reserved.
//

import UIKit
import StoreKit

class PurchaseViewController: UIViewController, SKProductsRequestDelegate, SKPaymentTransactionObserver {
    
    
    @IBOutlet weak var label1: UILabel!
    
    let groupId:String = "group.th.co.meesoft.soundeffect"
    
    @IBOutlet weak var purchaseSwitch: UISwitch!
    
    
    let userDefind: NSUserDefaults! = NSUserDefaults(suiteName: "group.th.co.meesoft.soundeffect")
    
    let productId: String = "th.co.meesoft.soundeffect.unlockremote"
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var unlock: UIButton!
    
    
    var freeVersion: String = "Purchase for unlock remote watch 4 slots."
    var fullVertion: String = "This is full version"

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
        
        if let isPurchase = userDefind.boolForKey("ispurchased") as Bool? {
            label.text = isPurchase ? fullVertion : freeVersion
            unlock.enabled = isPurchase
            label1.text = isPurchase ? "Is Purchased" : "Not Purchase"
            purchaseSwitch.on = isPurchase ? true : false
            unlock.backgroundColor = isPurchase ? UIColor.grayColor() : UIColor.blueColor()
            
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unlock(sender: UIButton) {
        
        for product in list {
            var prodID = product.productIdentifier
            if(prodID == productId) {
                p = product
                makePurchase()
                break;
            }
        }
        
    }
    

    @IBAction func cancel(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func purchase(sender: UISwitch) {
        if purchaseSwitch.on {
            let userSetting: NSUserDefaults! = NSUserDefaults(suiteName: groupId)
            userSetting.setBool(true, forKey: "ispurchased")
            unlock.enabled = false
            unlock.backgroundColor = UIColor.grayColor()
            label.text = fullVertion
            label1.text = "Is Purchased"
        }else {
            let userSetting: NSUserDefaults! = NSUserDefaults(suiteName: groupId)
            userSetting.setBool(false, forKey: "ispurchased")
            unlock.enabled = true
            unlock.backgroundColor = UIColor.blueColor()
            label.text = freeVersion
            label1.text = "Not Purchase"

        }
    }
    
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
        unlock.enabled = false
        label.text = fullVertion
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    
    
}

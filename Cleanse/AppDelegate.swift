//
//  AppDelegate.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 8/7/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit
import Firebase
import FirebaseCore
import FirebaseStorage
import FirebaseDatabase
import FirebaseAuth
import UserNotifications
import SwiftyStoreKit
import StoreKit
import FBSDKCoreKit
import UserNotifications
import UXCam
import Purchases

protocol SnippetsPurchasesDelegate: AnyObject {
    
    func purchaseCompleted(product: String)
    
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var purchases = RCPurchases(apiKey: "GLZWwnZAKXfcMFaSInneapaeokDPPMic")
    
    weak var purchasesdelegate : SnippetsPurchasesDelegate?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        FirebaseApp.configure()
        
        FBSDKAppEvents.activateApp()
        
        
        UXCam.start(withKey: "8921dd89a4b98a3")
        
        purchases?.delegate = self

        
        SwiftyStoreKit.completeTransactions(atomically: true) { products in
            
            for product in products {
                
                if product.transaction.transactionState == .purchased || product.transaction.transactionState == .restored {
                    
                    if product.needsFinishTransaction {
                        // Deliver content from server, then:
                        SwiftyStoreKit.finishTransaction(product.transaction)
                    }
                    print("purchased: \(product)")
                }
            }
        }

        return true
    }
    
    func letsgo() {
        
        let mainStoryboardIpad : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let initialViewControlleripad : UIViewController = mainStoryboardIpad.instantiateViewController(withIdentifier: "Login") as UIViewController
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = initialViewControlleripad
        self.window?.makeKeyAndVisible()
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

extension AppDelegate: RCPurchasesDelegate {
    func purchases(_ purchases: RCPurchases, completedTransaction transaction: SKPaymentTransaction, withUpdatedInfo purchaserInfo: RCPurchaserInfo) {
        
        self.purchasesdelegate?.purchaseCompleted(product: transaction.payment.productIdentifier)
        
        print("purchased")
        tryingtopurchase  = true
        letsgo()
        
    }
    
    func purchases(_ purchases: RCPurchases, receivedUpdatedPurchaserInfo purchaserInfo: RCPurchaserInfo) {
        //        handlePurchaserInfo(purchaserInfo)
        
        print("shit")
        
    }
    
    func purchases(_ purchases: RCPurchases, failedToUpdatePurchaserInfoWithError error: Error) {
        print(error)
        
        tryingtopurchase = false
    }
    
    func purchases(_ purchases: RCPurchases, failedTransaction transaction: SKPaymentTransaction, withReason failureReason: Error) {
        print(failureReason)
        
        tryingtopurchase = false
    }
    
    func purchases(_ purchases: RCPurchases, restoredTransactionsWith purchaserInfo: RCPurchaserInfo) {
        //        handlePurchaserInfo(purchaserInfo)
        
        print("restored")
        tryingtopurchase  = true
        
    }
    
    func purchases(_ purchases: RCPurchases, failedToRestoreTransactionsWithError error: Error) {
        print(error)
    }
}

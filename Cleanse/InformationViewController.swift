//
//  InformationViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 9/1/18.
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
import Purchases

class InformationViewController: UIViewController {
    
    var purchases = RCPurchases(apiKey: "GLZWwnZAKXfcMFaSInneapaeokDPPMic")

    @IBAction func tapInformation(_ sender: Any) {
        
        FBSDKAppEvents.logEvent("12MonthTrialPressedInformation")
        
        //        purchase(purchase: sevendayfreetrial)
        
        purchases?.entitlements { entitlements in
            guard let pro = entitlements?["Subscriptions"] else { return }
            guard let monthly = pro.offerings["Yearly"] else { return }
            guard let product = monthly.activeProduct else { return }
            self.purchases?.makePurchase(product)
            
            
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        FBSDKAppEvents.logEvent("InformationPage")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

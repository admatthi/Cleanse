//
//  FViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 8/7/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit
import FBSDKCoreKit

var height = String()
var currentweightstring = String()
var foodp = String()
var targetweightstring = String()

var b1pressed31 = Bool()
var b2pressed32 = Bool()
var b3pressed33 = Bool()
var b4pressed34 = Bool()

class FViewController: UIViewController {

    @IBOutlet weak var tapbutton1: UIButton!
    @IBOutlet weak var tapbutton2: UIButton!
    @IBOutlet weak var tapbutton3: UIButton!
    @IBOutlet weak var tapbutton4: UIButton!
    
    @IBOutlet weak var title1: UILabel!
    @IBOutlet weak var title2: UILabel!
    @IBOutlet weak var title3: UILabel!
    @IBOutlet weak var title4: UILabel!
    
    
    @IBAction func tapB1(_ sender: Any) {
        
  
        
        if b1pressed31 {
            
            tapbutton1.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
            title1.textColor = lightblue
            b1pressed31 = false
            icon1.image = UIImage(named: "Apple")

        } else {
            
            tapbutton1.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title1.textColor = .white
            icon1.image = UIImage(named: "Apple Copy")

            b1pressed31 = true
        }
    }
    @IBAction func tapB2(_ sender: Any) {
  
        
        if b2pressed32 {
            
            tapbutton2.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
            title2.textColor = lightblue
            b2pressed32 = false
            icon2.image = UIImage(named: "Banana")

        } else {
            
            tapbutton2.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title2.textColor = .white
            icon2.image = UIImage(named: "Banana Copy")

            b2pressed32 = true
        }
    }
    @IBAction func tapB3(_ sender: Any) {
      
        if b3pressed33 {
            
            tapbutton3.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
            title3.textColor = lightblue
            b3pressed33 = false
            icon3.image = UIImage(named: "Orange")

        } else {
            
            tapbutton3.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title3.textColor = .white
            icon3.image = UIImage(named: "Orange Copy")

            b3pressed33 = true
        }
    }
    @IBAction func tapB4(_ sender: Any) {
        
   
        if b4pressed34 {
            
            tapbutton4.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
            title4.textColor = lightblue
            b4pressed34 = false
            
        } else {
            
            tapbutton4.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title4.textColor = .white
            
            b4pressed34 = true
        }
    }
    
    @IBOutlet weak var icon1: UIImageView!
    @IBOutlet weak var icon2: UIImageView!
    
    @IBOutlet weak var icon3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if b3pressed33 {
            
            tapbutton3.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title3.textColor = .white
            icon3.image = UIImage(named: "Orange Copy")
            
        }
        
        if b1pressed31 {
            
            tapbutton1.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title1.textColor = .white
            icon1.image = UIImage(named: "Apple Copy")
            
        }
        if b2pressed32 {
            
            tapbutton2.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title2.textColor = .white
            icon2.image = UIImage(named: "Banana Copy")
            
        }
        time = "-"
        
        FBSDKAppEvents.logEvent("Fruits")
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

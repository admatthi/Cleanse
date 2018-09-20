//
//  EViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 8/7/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit
import FBSDKCoreKit

var b1pressed21 = Bool()
var b2pressed22 = Bool()
var b3pressed23 = Bool()
var b4pressed24 = Bool()

class EViewController: UIViewController {
  
    
    @IBOutlet weak var tapbutton1: UIButton!
    @IBOutlet weak var tapbutton2: UIButton!
    @IBOutlet weak var tapbutton3: UIButton!
    @IBOutlet weak var tapbutton4: UIButton!
    
    @IBOutlet weak var title1: UILabel!
    @IBOutlet weak var title2: UILabel!
    @IBOutlet weak var title3: UILabel!
    @IBOutlet weak var title4: UILabel!
    
    
    @IBAction func tapContinue(_ sender: Any) {
        
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        
    }
    @IBAction func tapB1(_ sender: Any) {
        
      
        if b1pressed21 {
            
            tapbutton1.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
            title1.textColor = lightblue
            b1pressed21 = false
            icon1.image = UIImage(named: "Rice")

        } else {
            
            tapbutton1.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title1.textColor = .white
            icon1.image = UIImage(named: "Rice Copy")

            b1pressed21 = true
        }
    }
    @IBAction func tapB2(_ sender: Any) {
    
        
        if b2pressed22 {
            
            tapbutton2.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
            title2.textColor = lightblue
            b2pressed22 = false
            icon2.image = UIImage(named: "Beans")

        } else {
            
            tapbutton2.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title2.textColor = .white
            icon2.image = UIImage(named: "Beans Copy")

            b2pressed22 = true
        }
    }
    @IBAction func tapB3(_ sender: Any) {
    
        
        if b3pressed23 {
            
            tapbutton3.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
            title3.textColor = lightblue
            b3pressed23 = false
            icon3.image = UIImage(named: "Oat")

            
        } else {
            
            tapbutton3.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title3.textColor = .white
            icon3.image = UIImage(named: "Oat Copy")

            b3pressed23 = true
        }
    }
    @IBAction func tapB4(_ sender: Any) {
        
   
        if b4pressed24 {
            
            tapbutton4.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
            title4.textColor = lightblue
            b4pressed24 = false
            
        } else {
            
            tapbutton4.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title4.textColor = .white
            
            b4pressed24 = true
        }
    }
    
    @IBOutlet weak var icon1: UIImageView!
    @IBOutlet weak var icon2: UIImageView!
    
    @IBOutlet weak var icon3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if b1pressed21 {
            
            tapbutton1.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title1.textColor = .white
            icon1.image = UIImage(named: "Rice Copy")
            
        } else {
            
           
        }
        
        if b2pressed22 {
            
            tapbutton2.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title2.textColor = .white
            icon2.image = UIImage(named: "Beans Copy")
            
        } else {
            
            
        }
        
        if b3pressed23 {
            
            tapbutton3.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title3.textColor = .white
            icon3.image = UIImage(named: "Oat Copy")
            
        } else {
            
            
        }
   
        time = "-"
        
        FBSDKAppEvents.logEvent("Carbs")
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

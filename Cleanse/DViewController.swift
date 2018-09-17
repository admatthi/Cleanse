//
//  DViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 8/7/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit
import FBSDKCoreKit

var b1pressed1 = Bool()
var b2pressed2 = Bool()
var b3pressed3 = Bool()
var b4pressed4 = Bool()

class DViewController: UIViewController {

    
    @IBOutlet weak var tapbutton1: UIButton!
    @IBOutlet weak var tapbutton2: UIButton!
    @IBOutlet weak var tapbutton3: UIButton!
    @IBOutlet weak var tapbutton4: UIButton!
    
    @IBOutlet weak var title1: UILabel!
    @IBOutlet weak var title2: UILabel!
    @IBOutlet weak var title3: UILabel!
    @IBOutlet weak var title4: UILabel!

    
    @IBAction func tapB1(_ sender: Any) {
        
    
        
        if b1pressed1 {
            
            tapbutton1.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
                title1.textColor = lightblue
            b1pressed1 = false
            icon1.image = UIImage(named: "Chicken")
            
            
        } else {
            
            tapbutton1.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
                title1.textColor = .white
            icon1.image = UIImage(named: "Chicken Copy")
            
            
            b1pressed1 = true
        }
    }
    @IBAction func tapB2(_ sender: Any) {
        
    
        if b2pressed2 {

            tapbutton2.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
            title2.textColor = lightblue
            b2pressed2 = false
            icon2.image = UIImage(named: "Beef")
            
            
        } else {
            
            tapbutton2.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title2.textColor = .white
            icon2.image = UIImage(named: "Beef Copy")
            
            b2pressed2 = true
        }
    }
    @IBAction func tapB3(_ sender: Any) {
  
        
        if b3pressed3 {

            tapbutton3.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
            title3.textColor = lightblue
            b3pressed3 = false
            icon3.image = UIImage(named: "Fish")
            
            
        } else {
            
            tapbutton3.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title3.textColor = .white

            icon3.image = UIImage(named: "Fish Copy")
            
            b3pressed3 = true
        }
    }
    @IBAction func tapB4(_ sender: Any) {
        

        if b4pressed4 {
            
            tapbutton4.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
            title4.textColor = lightblue
            b4pressed4 = false
            
        } else {
            
            tapbutton4.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title4.textColor = .white
            
            b4pressed4 = true
        }
    }
    
    
    @IBOutlet weak var icon1: UIImageView!
    @IBOutlet weak var icon2: UIImageView!

    @IBOutlet weak var icon3: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if b1pressed1 {
            
            tapbutton1.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title1.textColor = .white
            icon1.image = UIImage(named: "Chicken Copy")
            
            
        } else {
            
          
            
        }
        
        if b3pressed3 {
            
            tapbutton3.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title3.textColor = .white
            
            icon3.image = UIImage(named: "Fish Copy")
            
            
        } else {
            
           
            
        }
        
        if b2pressed2 {
            
            tapbutton2.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
            title2.textColor = .white
            icon2.image = UIImage(named: "Beef Copy")
            
            
        } else {
            
        
            
        }
        time = "-"

        FBSDKAppEvents.logEvent("Protein")
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

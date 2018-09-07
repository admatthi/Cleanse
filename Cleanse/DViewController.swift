//
//  DViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 8/7/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit
import FBSDKCoreKit

class DViewController: UIViewController {
    var b1pressed = Bool()
    var b2pressed = Bool()
    var b3pressed = Bool()
    var b4pressed = Bool()
    
    @IBOutlet weak var tapbutton1: UIButton!
    @IBOutlet weak var tapbutton2: UIButton!
    @IBOutlet weak var tapbutton3: UIButton!
    @IBOutlet weak var tapbutton4: UIButton!
    
    @IBAction func tapB1(_ sender: Any) {
        
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        
//        if b1pressed {
//            
//            tapbutton1.setBackgroundImage(UIImage(named: "DarkOutline"), for: .normal)
//            
//            b1pressed = false
//            
//        } else {
//            
//            tapbutton1.setBackgroundImage(UIImage(named: "WhiteCircle"), for: .normal)
//            
//            b1pressed = true
//        }
    }
    @IBAction func tapB2(_ sender: Any) {
        
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        
//        if b2pressed {
//
//            tapbutton2.setBackgroundImage(UIImage(named: "DarkOutline"), for: .normal)
//
//            b2pressed = false
//
//        } else {
//
//            tapbutton2.setBackgroundImage(UIImage(named: "WhiteCircle"), for: .normal)
//
//            b2pressed = true
//        }
    }
    @IBAction func tapB3(_ sender: Any) {
        
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        
//        if b3pressed {
//
//            tapbutton3.setBackgroundImage(UIImage(named: "DarkOutline"), for: .normal)
//
//            b3pressed = false
//
//        } else {
//
//            tapbutton3.setBackgroundImage(UIImage(named: "WhiteCircle"), for: .normal)
//
//            b3pressed = true
//        }
    }
    @IBAction func tapB4(_ sender: Any) {
        
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        
        if b4pressed {
            
            tapbutton4.setBackgroundImage(UIImage(named: "DarkOutline"), for: .normal)
            
            b4pressed = false
            
        } else {
            
            tapbutton4.setBackgroundImage(UIImage(named: "WhiteCircle"), for: .normal)
            
            b4pressed = true
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        b1pressed = false
        b2pressed = false
        b3pressed = false
        b4pressed = false
        time = "-"

        FBSDKAppEvents.logEvent("Screen 4")
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

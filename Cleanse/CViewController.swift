//
//  CViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 8/7/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit
import FBSDKCoreKit

var physicalactivity = String()

class CViewController: UIViewController {

    var b1pressed = Bool()
    var b2pressed = Bool()
    var b3pressed = Bool()
    var b4pressed = Bool()
    
    @IBOutlet weak var tapbutton1: UIButton!
    @IBOutlet weak var tapbutton2: UIButton!
    @IBOutlet weak var tapbutton3: UIButton!
    @IBOutlet weak var tapbutton4: UIButton!
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var title1: UILabel!
    @IBOutlet weak var title2: UILabel!

    @IBOutlet weak var title3: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!

    @IBAction func tapB1(_ sender: Any) {
        
  
    physicalactivity = "Beginner"
    tapbutton1.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
        tapbutton2.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
        tapbutton3.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)

        title1.textColor = .white
        label1.textColor = .white
        title2.textColor = lightblue
        label2.textColor = lightblue
        title3.textColor = lightblue
        label3.textColor = lightblue
        
        
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
        
physicalactivity = "Moderate"
        tapbutton2.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
        tapbutton1.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
        tapbutton3.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
        
        title2.textColor = .white
        label2.textColor = .white
        title1.textColor = lightblue
        label1.textColor = lightblue
        title3.textColor = lightblue
        label3.textColor = lightblue
    }
    @IBAction func tapB3(_ sender: Any) {
        
        
        physicalactivity = "Expert"
        tapbutton3.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
        tapbutton2.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
        tapbutton1.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
        
        title3.textColor = .white
        label3.textColor = .white
        title2.textColor = lightblue
        label2.textColor = lightblue
        title1.textColor = lightblue
        label1.textColor = lightblue
    }
    @IBAction func tapB4(_ sender: Any) {
        
   
        
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
        
        FBSDKAppEvents.logEvent("Activity")
        
        if focusarea == "" {
            
            focusarea = "-"
            
            
        } else {
            
            if physicalactivity == "Beginner" {
                
                self.tapbutton1.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
                self.tapbutton2.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
                self.tapbutton3.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
                
                self.title1.textColor = .white
                self.label1.textColor = .white
                self.title2.textColor = lightblue
                self.label2.textColor = lightblue
                self.title3.textColor = lightblue
                self.label3.textColor = lightblue
                
            } else {
                
                if physicalactivity == "Belly Fat" {
                    
                    
                } else {
                    
                    if physicalactivity == "Moderate" {
                        
                        self.tapbutton2.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
                        self.tapbutton1.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
                        self.tapbutton3.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
                        
                        self.title2.textColor = .white
                        self.label2.textColor = .white
                        self.title1.textColor = lightblue
                        self.label1.textColor = lightblue
                        self.title3.textColor = lightblue
                        self.label3.textColor = lightblue
                        
                    } else {
                        
                        if physicalactivity == "Expert" {
                            
                            self.tapbutton3.setBackgroundImage(UIImage(named: "GreenShit-1"), for: .normal)
                            self.tapbutton2.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
                            self.tapbutton1.setBackgroundImage(UIImage(named: "BLUEOUTLINERECETANGLE"), for: .normal)
                            
                            self.title3.textColor = .white
                            self.label3.textColor = .white
                            self.title2.textColor = lightblue
                            self.label2.textColor = lightblue
                            self.title1.textColor = lightblue
                            self.label1.textColor = lightblue
                            
                        } else {
                            
                            
                        }
                        
                    }
                    
                }
            }
        }
        
    }
        // Do any additional setup after loading the view.

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

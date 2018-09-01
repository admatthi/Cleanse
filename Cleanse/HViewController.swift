//
//  HViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 8/7/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit
import FBSDKCoreKit

class HViewController: UIViewController {

    @IBAction func tapStarted(_ sender: Any) {
        
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        
    }
    @IBOutlet weak var slider2: UISlider!
    @IBOutlet weak var slider1: UISlider!
    @IBAction func tapSlider(_ sender: Any) {
        
        var test = Int(slider1.value)
        tflabel.text = "\(test) lbs"
    }
    @IBOutlet weak var tflabel: UILabel!
    
    @IBOutlet weak var tflabel2: UILabel!
    @IBAction func tapSlider2(_ sender: Any) {
        
        var test = Int(slider2.value)
        tflabel2.text = "\(test) lbs"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        FBSDKAppEvents.logEvent("Screen 6")
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

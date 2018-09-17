//
//  GViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 8/7/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit
import FBSDKCoreKit

var inches = String()
var feet = String()
var current = String()
var goal = String()

class GViewController: UIViewController, UITextFieldDelegate    {

    @IBOutlet weak var targetweighttf: UITextField!
    
    @IBAction func tapNext(_ sender: Any) {
        
        if intf.text != "" {
            
            inches = intf.text!
            
        }
        
        if feettf.text != "" {
            
            feet = feettf.text!
            
        }
        
        if targetweighttf.text != "" {
            
            goal = targetweighttf.text!
            
        }
        
        if currentweighttf.text != "" {
            
            current = currentweighttf.text!
            
        }
        
        self.performSegue(withIdentifier: "FToPurchase", sender: self)
    }
    @IBOutlet weak var currentweighttf: UITextField!
    @IBOutlet weak var intf: UITextField!
    @IBOutlet weak var feettf: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
                
        intf.delegate = self
        feettf.delegate = self
        currentweighttf.delegate = self
        targetweighttf.delegate = self

        feettf.becomeFirstResponder()
        
        if inches != "" {
            
            intf.text = inches
        }
        
        if feet != "" {
            
            feettf.text = feet
        }
        
        if goal != "" {
            
            targetweighttf.text = goal
        }
        
        if current != "" {
            
            currentweighttf.text = current
        }
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        if intf.text != "" {
        
            inches = intf.text!
            
        }
        
        if feettf.text != "" {
            
            feet = feettf.text!

        }
        
        if targetweighttf.text != "" {
            
            goal = targetweighttf.text!

        }
        
        if currentweighttf.text != "" {
            
            current = currentweighttf.text!

        }
        
        return true
        
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

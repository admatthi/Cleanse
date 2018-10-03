//
//  ProfileViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 9/17/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit
import Firebase
import FirebaseCore
import FirebaseStorage
import FirebaseDatabase
import FirebaseAuth

class ProfileViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var targetweighttf: UITextField!
    @IBOutlet weak var currentweighttf: UITextField!
    @IBOutlet weak var intf: UITextField!
    @IBOutlet weak var feettf: UITextField!
    @IBOutlet weak var agetf: UITextField!
    
    @IBOutlet weak var carbs: UILabel!
    @IBOutlet weak var fats: UILabel!
    @IBOutlet weak var protein: UILabel!
    @IBOutlet weak var CALS: UILabel!
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        queryformacronutrients()
        updatevalues()

    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        updatevalues()
        queryformacronutrients()
        
        return true

    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        updatevalues()
        queryformacronutrients()
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()

        intf.delegate = self
        feettf.delegate = self
        currentweighttf.delegate = self
        targetweighttf.delegate = self
        agetf.delegate = self
        
        selectedinformation = "MACRONUTRIENTS EXPLAINED"
        queryforstats()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var reccalories = String()
    
    func updatevalues() {
        
        if currentweighttf.text != "" && feettf.text != "" && currentweighttf.text != "" && agetf.text !=  "" {
            
            ref?.child(uid).updateChildValues(["Age" : agetf.text!, "Goal Weight" : targetweighttf.text!, "Height Ft" : feettf.text!, "Height In" : intf.text!, "Weight" : currentweighttf.text!])
            
        }
        
    }
    func queryformacronutrients() {
        
        
        if intf.text != "" && feettf.text != "" && currentweighttf.text != "" && agetf.text !=  "" {
            
        self.heightinches = Double(intf.text!)!
        self.heightinches = self.heightinches + Double(feettf.text!)! * 12
        self.weightlbs = Double(currentweighttf.text!)!
        self.agey = Double(agetf.text!)!

        var intcalories = Double()
        
        weightkg = weightlbs / 2.2
        heightcm = heightinches * 2.54

        intcalories = 10 * weightkg
        intcalories = intcalories + (6.25 * heightcm)
        intcalories = intcalories - (5 * agey) - 161
        intcalories = intcalories * 1.3
        
        proteind = weightlbs * 1.1
        fatsd = 0.25 * weightlbs
        carbsd = 0.79 * weightlbs

        protein.text = String(Int(proteind))
        fats.text = String(Int(fatsd))
        carbs.text = String(Int(carbsd))
        
        CALS.text = String(Int(intcalories))
            
        }
        
    }

    var gender = String()
    var weightkg = Double()
    var heightcm = Double()
    var agey = Double()
    var weightlbs = Double()
    
    var heightinches = Double()
    
    var proteind = Double()
    var fatsd = Double()
    var carbsd = Double()
    
    func queryforstats() {
        
        ref?.child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
            
            var value = snapshot.value as? NSDictionary
            
         
            
            if var activityvalue = value?["Height In"] as? String {
                
                self.intf.text = activityvalue
                
           
            }
            
            if var activityvalue = value?["Height Ft"] as? String {
                
                self.feettf.text = activityvalue
                
                
            }
            
            if var activityvalue = value?["Weight"] as? String {
                
                self.currentweighttf.text = activityvalue

            }
            
            if var activityvalue = value?["Goal Weight"] as? String {
                

                self.targetweighttf.text = activityvalue

            }
            
            if var activityvalue = value?["Age"] as? String {
                
                
                self.agetf.text = activityvalue
                
                
            }
            
            self.queryformacronutrients()
            
        })
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

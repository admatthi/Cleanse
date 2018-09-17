//
//  ProfileViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 9/17/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var targetweighttf: UITextField!
    @IBOutlet weak var currentweighttf: UITextField!
    @IBOutlet weak var intf: UITextField!
    @IBOutlet weak var feettf: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        intf.delegate = self
        feettf.delegate = self
        currentweighttf.delegate = self
        targetweighttf.delegate = self

        feettf.becomeFirstResponder()
        
        queryforstats()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func queryforstats() {
        
        ref?.child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
            
            var value = snapshot.value as? NSDictionary
            
            if var activityvalue = value?["Height Ft"] as? String {
                
                self.feettf.text = activityvalue

            }
            
            if var activityvalue = value?["Height In"] as? String {
                
                self.intf.text = activityvalue

            }
            
            if var activityvalue = value?["Weight"] as? String {
                
                self.currentweighttf.text = activityvalue

            }
            
            if var activityvalue = value?["Goal Weight"] as? String {
                

                self.targetweighttf.text = activityvalue

            }
            
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

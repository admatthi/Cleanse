//
//  HomeViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 8/7/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit
import Firebase
import FirebaseCore
import FirebaseStorage
import FirebaseDatabase
import FirebaseAuth

var counter = Int()

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableVie: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
        
        self.becomeFirstResponder() // To get shake gesture
        
        if Auth.auth().currentUser == nil {
            // Do smth if user is not logged in
            
            counter = 1
            queryforfooddata()
            
//            self.performSegue(withIdentifier: "HomeToCreate", sender: self)
            
        } else {
            
            counter = 1
            queryforfooddata()
            uid = (Auth.auth().currentUser?.uid)!
            
            
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func queryforfooddata() {
        
        ref?.child("Food").child("\(counter)").observeSingleEvent(of: .value, with: { (snapshot) in
            
            var value = snapshot.value as? NSDictionary
            
            
            if var activityvalue = value?["breakfast"] as? String {
                
                breakfast = activityvalue
            }
            
            if var activityvalue = value?["bfood"] as? String {
                
                bfood = activityvalue

            }
            
            if var activityvalue = value?["bnutrient"] as? String {
                
                bnutrient = activityvalue
                
            }
            
            if var activityvalue = value?["bsnack"] as? String {
                
                bsnack = activityvalue
                
            }
            
            if var activityvalue = value?["bsfood"] as? String {
                
                bsfood = activityvalue
                
            }
            
            if var activityvalue = value?["bsnutrient"] as? String {
                
                bsnutrient = activityvalue
                
            }
            if var activityvalue = value?["lunch"] as? String {
                
                lunch = activityvalue
                
            }
            
            if var activityvalue = value?["lfood"] as? String {
                
                lfood = activityvalue
                
            }
            
            
            if var activityvalue = value?["lnutrient"] as? String {
                
                lnutrient = activityvalue
                
            }
            if var activityvalue = value?["lsnack"] as? String {
                
                lsnack = activityvalue
                
            }
            
            if var activityvalue = value?["lsfood"] as? String {
                
                lsfood = activityvalue
                
            }
            
            
            if var activityvalue = value?["lsnutrient"] as? String {
                
                lsnutrient = activityvalue
                
            }
            
            if var activityvalue = value?["dinner"] as? String {
                
                dinner = activityvalue
                
            }
            
            if var activityvalue = value?["dfood"] as? String {
                
                dfood = activityvalue
                
            }
            
            
            if var activityvalue = value?["dnutrient"] as? String {
                
                dnutrient = activityvalue
                
            }
        
            self.tableVie.reloadData()
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

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        
        return 5
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Meals", for: indexPath) as! MealsTableViewCell
        
        if foodimages.count > indexPath.row {
           
            cell.foodimage.image = foodimages[indexPath.row]
            
        }

        if indexPath.row == 0  {
            
            cell.nutrient.text = bnutrient
            cell.food.text = bfood
            cell.category.text = breakfast
            
        } else {
            
            if indexPath.row == 1  {
                
                cell.nutrient.text = bsnutrient
                cell.food.text = bsfood
                cell.category.text = bsnack
                
            } else {
                
                if indexPath.row == 2  {
                    
                    cell.nutrient.text = lnutrient
                    cell.food.text = lfood
                    cell.category.text = lunch
                    
                } else {
                    
                    if indexPath.row == 3  {
                        
                        cell.nutrient.text = lsnutrient
                        cell.food.text = lsfood
                        cell.category.text = lsnack
                        
                    } else {
                        
                        if indexPath.row == 4  {
                            
                            cell.nutrient.text = dnutrient
                            cell.food.text = dfood
                            cell.category.text = dinner
                            
                        } else {
                            
                            cell.nutrient.text = ""
                            cell.food.text = ""
                            cell.category.text = ""
                        }
                        
                    }
                }
            }
            
        }
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        

    }
}

var breakfast = String()
var bnutrient = String()
var bfood = String()

var bsnack = String()
var bsnutrient = String()
var bsfood = String()

var lunch = String()
var lnutrient = String()
var lfood = String()

var lsnack = String()
var lsnutrient = String()
var lsfood = String()

var dinner = String()
var dnutrient = String()
var dfood = String()

var foodimages = [UIImage]()

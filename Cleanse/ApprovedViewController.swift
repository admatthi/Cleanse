//
//  ApprovedViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 8/18/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit
import Firebase
import FirebaseCore
import FirebaseStorage
import FirebaseDatabase
import FirebaseAuth

var foods = [String]()
var servings = [String]()

class ApprovedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var nutrient: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()

        foods.removeAll()
        servings.removeAll()
        
        
        category.text = selectedcategory
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func queryforfooddata() {
//        
//        ref?.child("Food").child(selectednutrient).observeSingleEvent(of: .value, with: { (snapshot) in
//            
//            var value = snapshot.value as? NSDictionary
//            
//            
//            if var activityvalue = value?["1"] as? String {
//                
//                foods.append(activityvalue)
//            }
//            
//            if var activityvalue = value?["2"] as? String {
//                
//                foods.append(activityvalue)
//            }
//            if var activityvalue = value?["3"] as? String {
//                
//                foods.append(activityvalue)
//            }
//            if var activityvalue = value?["4"] as? String {
//                
//                foods.append(activityvalue)
//            }
//            if var activityvalue = value?["5"] as? String {
//                
//                foods.append(activityvalue)
//            }
//            if var activityvalue = value?["6"] as? String {
//                
//                foods.append(activityvalue)
//            }
//            if var activityvalue = value?["7"] as? String {
//                
//                foods.append(activityvalue)
//            }
//            if var activityvalue = value?["8"] as? String {
//                
//                foods.append(activityvalue)
//            }
//            if var activityvalue = value?["9"] as? String {
//                
//                foods.append(activityvalue)
//            }
//            if var activityvalue = value?["10"] as? String {
//                
//                foods.append(activityvalue)
//            }
//            if var activityvalue = value?["11"] as? String {
//                
//                foods.append(activityvalue)
//            }
//            if var activityvalue = value?["12"] as? String {
//                
//                foods.append(activityvalue)
//            }
//            
//            if var activityvalue = value?["1s"] as? String {
//                
//                servings.append(activityvalue)
//            }
//            
//            if var activityvalue = value?["2s"] as? String {
//                
//                servings.append(activityvalue)
//            }
//            if var activityvalue = value?["3s"] as? String {
//                
//                servings.append(activityvalue)
//            }
//            if var activityvalue = value?["4s"] as? String {
//                
//                servings.append(activityvalue)
//            }
//            if var activityvalue = value?["5s"] as? String {
//                
//                servings.append(activityvalue)
//            }
//            if var activityvalue = value?["6s"] as? String {
//                
//                servings.append(activityvalue)
//            }
//            if var activityvalue = value?["7s"] as? String {
//                
//                servings.append(activityvalue)
//            }
//            if var activityvalue = value?["8s"] as? String {
//                
//                servings.append(activityvalue)
//            }
//            if var activityvalue = value?["9s"] as? String {
//                
//                servings.append(activityvalue)
//            }
//            if var activityvalue = value?["10s"] as? String {
//                
//                servings.append(activityvalue)
//            }
//            if var activityvalue = value?["11s"] as? String {
//                
//                servings.append(activityvalue)
//            }
//            if var activityvalue = value?["12s"] as? String {
//                
//                servings.append(activityvalue)
//            }
//            
//            if var activityvalue = value?["13s"] as? String {
//                
//                servings.append(activityvalue)
//            }
//            
//            self.tableView.reloadData()
//
//        })
//    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if foods.count > 0 {
            
            return foods.count

        } else {
            
            return 0
        }
        
    }
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Approved", for: indexPath) as! ApprovedTableViewCell
        
        cell.checkimage.layer.masksToBounds = false
        cell.checkimage.layer.cornerRadius = cell.checkimage.frame.height/2
        cell.checkimage.clipsToBounds = true
        
        if foods.count > 0 {
            
            cell.food.text = foods[indexPath.row]
            cell.servings.text = servings[indexPath.row]
            
        } else {
            
            cell.food.text = ""
            cell.servings.text = ""
        }
        
        return cell
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

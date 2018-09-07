//
//  RecipeViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 9/1/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit
import Firebase
import FirebaseCore
import FirebaseStorage
import FirebaseDatabase
import FirebaseAuth

var ingredientsandmethod = [String]()

class RecipeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var servinglabel: UILabel!
    @IBOutlet weak var timelabel: UILabel!
    @IBOutlet weak var difficultylabel: UILabel!
    @IBOutlet weak var difficulty: UIImageView!
    @IBOutlet weak var recipename: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        recipename.text = selectedmeal
        
        ref = Database.database().reference()

        ingredientsandmethod.removeAll()
        queryforfooddata()
        
        selectedimage.image = selectedimage2
        
        // Do any additional setup after loading the view.
    }

    func queryforfooddata() {
        
        ref?.child(selectedmeal).observeSingleEvent(of: .value, with: { (snapshot) in
            
            var value = snapshot.value as? NSDictionary
            
            ingredientsandmethod.append("Instructions")

            if var activityvalue = value?["1"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            
            if var activityvalue = value?["2"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["3"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["4"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["5"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["6"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["7"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["8"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["9"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["10"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["11"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["12"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            
            if var activityvalue = value?["13"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            
            if var activityvalue = value?["14"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["15"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["16"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["17"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["18"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["19"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["20"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["21"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["22"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["23"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            if var activityvalue = value?["24"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            
            if var activityvalue = value?["25"] as? String {
                
                ingredientsandmethod.append(activityvalue)
            }
            
            if var activityvalue = value?["Difficulty"] as? String {
                
                self.difficultylabel.text = activityvalue
            }
            
            if var activityvalue = value?["Time"] as? String {
                
                self.timelabel.text = activityvalue
            }
            
            if var activityvalue = value?["Serves"] as? String {
                
                self.servinglabel.text = activityvalue
            }
            
            self.tableView.reloadData()
            
        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if ingredientsandmethod.count > 0 {
            
            return ingredientsandmethod.count

        } else {
            
            return 0
        }
        
        
    }
    
    @IBOutlet weak var selectedimage: UIImageView!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Recipe", for: indexPath) as! RecipeTableViewCell
        
        if ingredientsandmethod.count > 0  {
            
            cell.ingredient.text = ingredientsandmethod[indexPath.row]
            
            if ingredientsandmethod.contains("Method") {
                
            var thenumber = ingredientsandmethod.index(of: "Method")
            
            if indexPath.row > thenumber! {
                
                var step = indexPath.row - thenumber!
                
                cell.ingredient.text = "\(step). \(ingredientsandmethod[indexPath.row])"

            }
                
            }
            
            if indexPath.row == 0 || ingredientsandmethod[indexPath.row] == "Method" {
                
                cell.ingredient.textColor = foam
                cell.bottomline.alpha = 0
                cell.seperator.alpha = 1
                
            } else {
                
                cell.ingredient.textColor = light
                cell.bottomline.alpha = 0.2
                cell.seperator.alpha = 0
            }
            

        } else {
            
            cell.ingredient.text = ""

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

let foam = UIColor(red:0.33, green:0.89, blue:0.74, alpha:1.0)
let light = UIColor(red:0.76, green:0.78, blue:0.84, alpha:1.0)



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
            
            DispatchQueue.main.async {
                
                self.performSegue(withIdentifier: "HomeToCreate", sender: self)

            }
            
            
        } else {
            
            counter = 1
            queryforfooddata()
            uid = (Auth.auth().currentUser?.uid)!
//            let date = Date()
//            let calendar = Calendar.current
//            let dateFormatter = DateFormatter()
//            dateFormatter.dateFormat = "MM-dd-yy"
//            var todaysdate =  dateFormatter.string(from: date)
//
//            var dow = getDayOfWeek(todaysdate)
//
//            let weekday = Calendar.current.component(.weekday, from: Date())
//
//            var week =  dateFormatter.string(from: date)

            let date = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = "EEEE"
            let dayInWeek = formatter.string(from: date)
            
            dayofweek.text = dayInWeek
            
        }
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var dayofweek: UILabel!
    @IBAction func tapRefresh(_ sender: Any) {
        

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func queryforfooddata() {
        
        ref?.child("Food").child("\(counter)").observeSingleEvent(of: .value, with: { (snapshot) in
            
            var value = snapshot.value as? NSDictionary
            
            
            if var activityvalue = value?["b1"] as? String {
                
                b1 = activityvalue
            }
            
            if var activityvalue = value?["b2"] as? String {
                
                b2 = activityvalue

            }
            
            if var activityvalue = value?["bs1"] as? String {
                
                bs1 = activityvalue
                
            }
            
            if var activityvalue = value?["l1"] as? String {
                
                l1 = activityvalue
                
            }
            
            if var activityvalue = value?["l2"] as? String {
                
                l2 = activityvalue
                
            }
            if var activityvalue = value?["l3"] as? String {
                
                l3 = activityvalue
                
            }
            
            if var activityvalue = value?["ls1"] as? String {
                
                ls1 = activityvalue
                
            }
            
            
            if var activityvalue = value?["ls2"] as? String {
                
                ls2 = activityvalue
                
            }
            if var activityvalue = value?["ls3"] as? String {
                
                ls3 = activityvalue
                
            }
            
            if var activityvalue = value?["d1"] as? String {
                
                d1 = activityvalue
                
            }
            
            
            if var activityvalue = value?["d2"] as? String {
                
                d2 = activityvalue
                
            }
            
            if var activityvalue = value?["d3"] as? String {
                
                d3 = activityvalue
                
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
    
        
        return 11
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Meals", for: indexPath) as! MealsTableViewCell
        
        cell.foodimage.layer.masksToBounds = false
        cell.foodimage.layer.cornerRadius = cell.foodimage.frame.height/2
        cell.foodimage.clipsToBounds = true
        
        if foodimages.count > indexPath.row {
           
//            cell.foodimage.image = foodimages[indexPath.row]
            
        }

        if indexPath.row == 0  {
            
            cell.nutrient.text = "Lean Protein"
            cell.food.text = b1
            cell.category.text = "Breakfast"
            cell.foodimage.image = UIImage(named: "\(b1)")
            cell.servings.text = "6 servings"
            
        } else {
            
            if indexPath.row == 1  {
                
                cell.nutrient.text = "Carbohydrates"
                cell.food.text = b2
                cell.category.text = "Breakfast"
                cell.foodimage.image = UIImage(named: "\(b2)")
                cell.servings.text = "3 servings"
            } else {
                
                if indexPath.row == 2  {
                    
                    cell.nutrient.text = "Vegetables"
                    cell.food.text = bs1
                    cell.category.text = "Breakfast Snack"
                    cell.foodimage.image = UIImage(named: "\(bs1)")
                    cell.servings.text = "1 serving"
                    
                } else {
                    
                    if indexPath.row == 3  {
                        
                        cell.nutrient.text = "Lean Protein"
                        cell.food.text = l1
                        cell.category.text = "Lunch"
                        cell.foodimage.image = UIImage(named: "\(l1)")
                        cell.servings.text = "5 servings"
                        
                    } else {
                        
                        if indexPath.row == 4  {
                            
                            cell.nutrient.text = "Carbohydrates"
                            cell.food.text = l2
                            cell.category.text = "Lunch"
                            cell.foodimage.image = UIImage(named: "\(l2)")
                            cell.servings.text = "3 servings"
                        } else {
                            
                            if indexPath.row == 5  {
                                
                                cell.nutrient.text = "Vegetables"
                                cell.food.text = l3
                                cell.category.text = "Lunch"
                                cell.foodimage.image = UIImage(named: "\(l3)")
                                cell.servings.text = "1 servings"
                            } else {
                                
                                if indexPath.row == 6  {
                                    
                                    cell.nutrient.text = "Lean Protein"
                                    cell.food.text = ls1
                                    cell.category.text = "Lunch Snack"
                                    cell.foodimage.image = UIImage(named: "\(ls1)")
                                    cell.servings.text = "5 servings"
                                } else {
                                    
                                    if indexPath.row == 7  {
                                        
                                        cell.nutrient.text = "Carbohydrates"
                                        cell.food.text = ls2
                                        cell.category.text = "Lunch Snack"
                                        cell.foodimage.image = UIImage(named: "\(ls2)")
                                        cell.servings.text = "3 servings"
                                    } else {
                                        
                                        if indexPath.row == 8  {
                                            
                                            cell.nutrient.text = "Vegetables"
                                            cell.food.text = ls3
                                            cell.category.text = "Lunch Snack"
                                            cell.foodimage.image = UIImage(named: "\(ls3)")
                                            cell.servings.text = "1 servings"
                                        } else {
                                            
                                            if indexPath.row == 9  {
                                                
                                                cell.nutrient.text = "Lean Protein"
                                                cell.food.text = d1
                                                cell.category.text = "Dinner"
                                                cell.foodimage.image = UIImage(named: "\(d1)")
                                                cell.servings.text = "5 servings"
                                            } else {
                                                
                                                if indexPath.row == 10  {
                                                    
                                                    cell.nutrient.text = "Carbohydrates"
                                                    cell.food.text = d2
                                                    cell.category.text = "Dinner"
                                                    cell.foodimage.image = UIImage(named: "\(d2)")
                                                    cell.servings.text = "2 servings"
                                                } else {
                                                    
                                                    if indexPath.row == 11  {
                                                        
                                                        cell.nutrient.text = "Vegetables"
                                                        cell.food.text = d3
                                                        cell.category.text = "Dinner"
                                                        cell.foodimage.image = UIImage(named: "\(d3)")
                                                        cell.servings.text = "1 servings"
                                                    } else {
                                                        
        
                                                            cell.nutrient.text = ""
                                                            cell.food.text = ""
                                                            cell.category.text = ""
                                                            cell.servings.text = "5 servings"
                                                        }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        
                    }
                }
            }
            
        }
        
        return cell
    }
    
    @IBAction func tapForward(_ sender: Any) {
        
        counter += 1
        
        if counter >= 7 {
            
            counter = 0
            
            queryforfooddata()
            
        } else {
            
            queryforfooddata()
            
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        var this2 = dayofweek.text!
        
        let this3 = formatter.date(from: this2)
        
        var nextdate = Calendar.current.date(byAdding: .day, value: +1, to: this3!)!
        

        let dayInWeek = formatter.string(from: nextdate)
        
        dayofweek.text = dayInWeek
       
    }
    
    let today = Date()

    @IBAction func tapBack(_ sender: Any) {
        
        counter -= 1
        
        if counter >= 7 {
            
            counter = 0
            
            queryforfooddata()
            
        } else {
            
            queryforfooddata()
            
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        var this2 = dayofweek.text!
        
        let this3 = formatter.date(from: this2)
        
        var nextdate = Calendar.current.date(byAdding: .day, value: -1, to: this3!)!
        
        
        let dayInWeek = formatter.string(from: nextdate)
        
        dayofweek.text = dayInWeek
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0  {
            
            selectednutrient = "Lean Protein"
            selectedcategory = "Breakfast"

        } else {
            
            if indexPath.row == 1  {
                
                selectednutrient = "Carbohydrates"
                selectedcategory = "Breakfast"

            } else {
                
                if indexPath.row == 2  {
                    selectednutrient = "Vegetables"
                    selectedcategory = "Breakfast Snack"

                    
                } else {
                    
                    if indexPath.row == 3  {
                        selectednutrient = "Lean Protein"
                        selectedcategory = "Lunch"

                        
                    } else {
                        
                        if indexPath.row == 4  {
                            selectednutrient = "Carbohydrates"
                            selectedcategory = "Lunch"

                        } else {
                            
                            if indexPath.row == 5  {
                                selectednutrient = "Vegetables"
                                selectedcategory = "Lunch"

                            } else {
                                
                                if indexPath.row == 6  {
                                    selectednutrient = "Lean Protein"
                                    selectedcategory = "Lunch Snack"

                                } else {
                                    
                                    if indexPath.row == 7  {
                                        selectednutrient = "Carbohydrates"
                                        selectedcategory = "Lunch Snack"

                                    } else {
                                        
                                        if indexPath.row == 8  {
                                            selectednutrient = "Vegetables"
                                            selectedcategory = "Lunch Snack"

                                        } else {
                                            
                                            if indexPath.row == 9  {
                                                selectednutrient = "Lean Protein"
                                                selectedcategory = "Dinner"

                                            } else {
                                                
                                                if indexPath.row == 10  {
                                                    selectednutrient = "Carbohydrates"
                                                    selectedcategory = "Dinner"

                                                } else {
                                                    
                                                    if indexPath.row == 11  {
                                                        selectednutrient = "Vegetables"
                                                        selectedcategory = "Dinner"

                                                    } else {
                                                      

                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        
                    }
                }
            }
            
        }
        
        self.performSegue(withIdentifier: "HomeToApproved", sender: self)

    }
}

var selectedcategory = String()
var selectednutrient = String()

var b1 = String()
var b2 = String()
var b3 = String()

var bs1 = String()

var l1 = String()
var l2 = String()
var l3 = String()

var ls1 = String()
var ls2 = String()
var ls3 = String()

var d1 = String()
var d2 = String()
var d3 = String()

var dinner = String()
var dnutrient = String()
var dfood = String()

var foodimages = [UIImage]()

func getDayOfWeek(_ today:String) -> Int? {
    let formatter  = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    guard let todayDate = formatter.date(from: today) else { return nil }
    let myCalendar = Calendar(identifier: .gregorian)
    let weekDay = myCalendar.component(.weekday, from: todayDate)
    return weekDay
}


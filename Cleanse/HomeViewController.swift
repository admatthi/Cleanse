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

var meals = [String]()

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var d1: UIButton!
    @IBOutlet weak var d2: UIButton!
    @IBOutlet weak var d3: UIButton!
    @IBOutlet weak var d4: UIButton!
    @IBOutlet weak var d5: UIButton!
    @IBOutlet weak var d6: UIButton!
    @IBOutlet weak var d7: UIButton!

    @IBAction func D1(_ sender: Any) {
        
        dayInWeek = "Monday"
        loadrelevantday()
    }
    @IBAction func D2(_ sender: Any) {
        
        dayInWeek = "Tuesday"
        loadrelevantday()
        
    }
    @IBAction func D3(_ sender: Any) {
        
        dayInWeek = "Wednesday"
        loadrelevantday()

    }
    @IBAction func D4(_ sender: Any) {
        
        dayInWeek = "Thursday"
        loadrelevantday()

    }
    @IBAction func D5(_ sender: Any) {
        
        dayInWeek = "Friday"
        loadrelevantday()

    }
    @IBAction func D6(_ sender: Any) {
        
        dayInWeek = "Saturday"
        loadrelevantday()

    }
    @IBAction func D7(_ sender: Any) {
        
        dayInWeek = "Sunday"
       loadrelevantday()
        
    }
    
    @IBOutlet weak var tableVie: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
        
        self.becomeFirstResponder() // To get shake gesture
        
        tableVie.estimatedRowHeight = 68.0
        tableVie.rowHeight = UITableViewAutomaticDimension
        
        if Auth.auth().currentUser == nil {
            // Do smth if user is not logged in
            
            counter = 1
            loadrelevantday()
            
            DispatchQueue.main.async {
                
                self.performSegue(withIdentifier: "HomeToCreate", sender: self)

            }
            
            
        } else {
            
            counter = 1
            loadrelevantday()
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
            dayInWeek = formatter.string(from: date)
            
            let startWeek = Date().startOfWeek
            let endWeek = Date().endOfWeek
            var dateFormat1 = DateFormatter()
            dateFormat1.dateFormat = "MM/dd"
            let startWeek2 = dateFormat1.string(from: startWeek!)
            var dateFormat12 = DateFormatter()
            dateFormat12.dateFormat = "MM/dd"
            let endWeek2 = dateFormat12.string(from: endWeek!)
            print(startWeek2)
            print(endWeek2)
            dayofweek.text = "\(startWeek2) - \(endWeek2)"
            
            if meals.count > 0 {
                
                loadrelevantday()
                
            } else {
                loadrelevantday()
                
            }
            
        }
        // Do any additional setup after loading the view.
    }

    var dayInWeek = String()
    
    func loadsunday() {
        
        meals.append("Chilli Beans & Lentils on Toast")
        foodimages.append(UIImage(named: "Chilli Beans & Lentils on Toast")!)
        meals.append("Refresh Juice")
        foodimages.append(UIImage(named: "Refresh Juice")!)
        meals.append("Sushi with Tuna")
        foodimages.append(UIImage(named: "Sushi with Tuna")!)
        meals.append("Crispbreads with Cottage Cheese & Chives")
        foodimages.append(UIImage(named: "Crispbreads with Cottage Cheese & Chives")!)
        meals.append("Quinoa Pilaf with Chicken")
        foodimages.append(UIImage(named: "Quinoa Pilaf with Chicken")!)
        tableVie.reloadData()
        d7.setTitleColor(.white, for: .normal)
        d7.setBackgroundImage(UIImage(named: "GreenCircle"), for: .normal)
        d2.setTitleColor(lightblue, for: .normal)
        d2.setBackgroundImage(nil, for: .normal)
        d3.setTitleColor(lightblue, for: .normal)
        d3.setBackgroundImage(nil, for: .normal)
        d4.setTitleColor(lightblue, for: .normal)
        d4.setBackgroundImage(nil, for: .normal)
        d5.setTitleColor(lightblue, for: .normal)
        d5.setBackgroundImage(nil, for: .normal)
        d6.setTitleColor(lightblue, for: .normal)
        d6.setBackgroundImage(nil, for: .normal)
        d1.setTitleColor(lightblue, for: .normal)
        d1.setBackgroundImage(nil, for: .normal)
        
        
    }
    
    func loadmonday() {
        meals.append("Blueberry & Lemon Breakfast Quinoa")
        foodimages.append(UIImage(named: "Blueberry & Lemon Breakfast Quinoa")!)
        meals.append("Hardboiled Egg & Tomato on Toast")
        foodimages.append(UIImage(named: "Hardboiled Egg & Tomato on Toast")!)
        meals.append("Vietnamese Rolls with Chicken")
        foodimages.append(UIImage(named: "Vietnamese Rolls with Chicken")!)
        meals.append("Passionfruit & Mango Mousse")
        foodimages.append(UIImage(named: "Passionfruit & Mango Mousse")!)
        meals.append("Beef & Tomato Stew with Couscous")
        foodimages.append(UIImage(named: "Beef & Tomato Stew with Couscous")!)
        tableVie.reloadData()
        d1.setTitleColor(.white, for: .normal)
        d1.setBackgroundImage(UIImage(named: "GreenCircle"), for: .normal)
        d2.setTitleColor(lightblue, for: .normal)
        d2.setBackgroundImage(nil, for: .normal)
        d3.setTitleColor(lightblue, for: .normal)
        d3.setBackgroundImage(nil, for: .normal)
        d4.setTitleColor(lightblue, for: .normal)
        d4.setBackgroundImage(nil, for: .normal)
        d5.setTitleColor(lightblue, for: .normal)
        d5.setBackgroundImage(nil, for: .normal)
        d6.setTitleColor(lightblue, for: .normal)
        d6.setBackgroundImage(nil, for: .normal)
        d7.setTitleColor(lightblue, for: .normal)
        d7.setBackgroundImage(nil, for: .normal)
    }
    
    func loadtuesday() {
        
        meals.append("Porridge with Stewed Apple")
        foodimages.append(UIImage(named: "Porridge with Stewed Apple")!)
        meals.append("Banana & Almonds with Yoghurt")
        foodimages.append(UIImage(named: "Banana & Almonds with Yoghurt")!)
        meals.append("Salad & Bean Wrap")
        foodimages.append(UIImage(named: "Salad & Bean Wrap")!)
        meals.append("Crispbreads with Avocado & Rocket")
        foodimages.append(UIImage(named: "Crispbreads with Avocado & Rocket")!)
        meals.append("Sweet Potato & Black Bean Enchilada")
        foodimages.append(UIImage(named: "Sweet Potato & Black Bean Enchilada")!)
        tableVie.reloadData()
        d2.setTitleColor(.white, for: .normal)
        d2.setBackgroundImage(UIImage(named: "GreenCircle"), for: .normal)
        d1.setTitleColor(lightblue, for: .normal)
        d1.setBackgroundImage(nil, for: .normal)
        d3.setTitleColor(lightblue, for: .normal)
        d3.setBackgroundImage(nil, for: .normal)
        d4.setTitleColor(lightblue, for: .normal)
        d4.setBackgroundImage(nil, for: .normal)
        d5.setTitleColor(lightblue, for: .normal)
        d5.setBackgroundImage(nil, for: .normal)
        d6.setTitleColor(lightblue, for: .normal)
        d6.setBackgroundImage(nil, for: .normal)
        d7.setTitleColor(lightblue, for: .normal)
        d7.setBackgroundImage(nil, for: .normal)
    }
    
    func loadwednesday() {
        
        meals.append("Berry & Almond Oats")
        foodimages.append(UIImage(named: "Berry & Almond Oats")!)
        meals.append("Banana Smoothie")
        foodimages.append(UIImage(named: "Banana Smoothie")!)
        meals.append("Tuna Sandwhich")
        foodimages.append(UIImage(named: "Tuna Sandwich")!)
        meals.append("Ricotta on Rye")
        foodimages.append(UIImage(named: "Ricotta on Rye")!)
        meals.append("Salmona Nicoise Salad")
        foodimages.append(UIImage(named: "Salmon Nicoise Salad")!)
        tableVie.reloadData()
        d3.setTitleColor(.white, for: .normal)
        d3.setBackgroundImage(UIImage(named: "GreenCircle"), for: .normal)
        d2.setTitleColor(lightblue, for: .normal)
        d2.setBackgroundImage(nil, for: .normal)
        d1.setTitleColor(lightblue, for: .normal)
        d1.setBackgroundImage(nil, for: .normal)
        d4.setTitleColor(lightblue, for: .normal)
        d4.setBackgroundImage(nil, for: .normal)
        d5.setTitleColor(lightblue, for: .normal)
        d5.setBackgroundImage(nil, for: .normal)
        d6.setTitleColor(lightblue, for: .normal)
        d6.setBackgroundImage(nil, for: .normal)
        d7.setTitleColor(lightblue, for: .normal)
        d7.setBackgroundImage(nil, for: .normal)
    }
    
    func loadthursday() {
        
        meals.append("Green Smothie Bowl")
        foodimages.append(UIImage(named: "Green Smoothie Bowl")!)
        meals.append("Almonds & Grapes")
        foodimages.append(UIImage(named: "Almonds & Grapes")!)
        meals.append("Chicken & Salad Wrap")
        foodimages.append(UIImage(named: "Chicken and Salad Wrap")!)
        meals.append("Egg Crispbreads")
        foodimages.append(UIImage(named: "Egg Crispbreads")!)
        meals.append("Homemade Beef Burger")
        foodimages.append(UIImage(named: "Homemade Beef Burger")!)
        tableVie.reloadData()
        d4.setTitleColor(.white, for: .normal)
        d4.setBackgroundImage(UIImage(named: "GreenCircle"), for: .normal)
        d2.setTitleColor(lightblue, for: .normal)
        d2.setBackgroundImage(nil, for: .normal)
        d3.setTitleColor(lightblue, for: .normal)
        d3.setBackgroundImage(nil, for: .normal)
        d1.setTitleColor(lightblue, for: .normal)
        d1.setBackgroundImage(nil, for: .normal)
        d5.setTitleColor(lightblue, for: .normal)
        d5.setBackgroundImage(nil, for: .normal)
        d6.setTitleColor(lightblue, for: .normal)
        d6.setBackgroundImage(nil, for: .normal)
        d7.setTitleColor(lightblue, for: .normal)
        d7.setBackgroundImage(nil, for: .normal)
    }
    
    func loadfriday() {
        
        meals.append("Poached Eggs with Asparagus")
        foodimages.append(UIImage(named: "Poached Eggs with Asparagus")!)
        meals.append("Berry Yoghurt & Muesli")
        foodimages.append(UIImage(named: "Berry Yoghurt & Muesli")!)
        meals.append("Greek Pasta Salad")
        foodimages.append(UIImage(named: "Greek Pasta Salad")!)
        meals.append("Crispbreads with Cheese & Tomato")
        foodimages.append(UIImage(named: "Crispbreads with Cheese & Tomato")!)
        meals.append("Sweet & Sour Chicken with Rice")
        foodimages.append(UIImage(named: "Sweet & Sour Chicken with Rice")!)
        tableVie.reloadData()
        d5.setTitleColor(.white, for: .normal)
        d5.setBackgroundImage(UIImage(named: "GreenCircle"), for: .normal)
        d2.setTitleColor(lightblue, for: .normal)
        d2.setBackgroundImage(nil, for: .normal)
        d3.setTitleColor(lightblue, for: .normal)
        d3.setBackgroundImage(nil, for: .normal)
        d4.setTitleColor(lightblue, for: .normal)
        d4.setBackgroundImage(nil, for: .normal)
        d1.setTitleColor(lightblue, for: .normal)
        d1.setBackgroundImage(nil, for: .normal)
        d6.setTitleColor(lightblue, for: .normal)
        d6.setBackgroundImage(nil, for: .normal)
        d7.setTitleColor(lightblue, for: .normal)
        d7.setBackgroundImage(nil, for: .normal)
        
    }
    
    func loadsaturday() {
        
        meals.append("Avocado & Tomato on Toast")
        foodimages.append(UIImage(named: "Avocado & Tomato on Toast")!)
        meals.append("Berry Yoghurt with Almonds")
        foodimages.append(UIImage(named: "Berry Yoghurt with Almonds")!)
        meals.append("Waldorf Quinoa Salad")
        foodimages.append(UIImage(named: "Waldorf Quinoa Salad")!)
        meals.append("Tomato & Avocado Salsa on Rye")
        foodimages.append(UIImage(named: "Tomato & Avocado Salsa on Rye")!)
        meals.append("Lemon & Herb Infused Fish with Vegetables")
        foodimages.append(UIImage(named: "Lemon & Herb Infused Fish with Vegetables")!)

        tableVie.reloadData()
        
        d6.setTitleColor(.white, for: .normal)
        d6.setBackgroundImage(UIImage(named: "GreenCircle"), for: .normal)
        d2.setTitleColor(lightblue, for: .normal)
        d2.setBackgroundImage(nil, for: .normal)
        d3.setTitleColor(lightblue, for: .normal)
        d3.setBackgroundImage(nil, for: .normal)
        d4.setTitleColor(lightblue, for: .normal)
        d4.setBackgroundImage(nil, for: .normal)
        d5.setTitleColor(lightblue, for: .normal)
        d5.setBackgroundImage(nil, for: .normal)
        d1.setTitleColor(lightblue, for: .normal)
        d1.setBackgroundImage(nil, for: .normal)
        d7.setTitleColor(lightblue, for: .normal)
        d7.setBackgroundImage(nil, for: .normal)
    }
    
    func loadrelevantday() {
        
        meals.removeAll()
        foodimages.removeAll()
        
        if dayInWeek == "Sunday" {
            
            loadsunday()
            
        } else {
            
            if dayInWeek == "Monday" {
                
                loadmonday()
                
            } else {
                
                if dayInWeek == "Tuesday" {
                    
                    loadtuesday()
                    
                } else {
                    
                    
                    if dayInWeek == "Wednesday" {
                        
                        loadwednesday()
                        
                    } else {
                        
                        if dayInWeek == "Thursday" {
                            
                            loadthursday()
                        } else {
                            
                            if dayInWeek == "Friday" {
                                
                                loadfriday()
                            } else {
                                
                                if dayInWeek == "Saturday" {
                                    
                                    loadsaturday()
                                    
                                } else {
                                    
                                    if dayInWeek == "Sunday" {
                                        
                                        loadsunday()
                                        
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
    @IBOutlet weak var dayofweek: UILabel!
    @IBAction func tapRefresh(_ sender: Any) {
        

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

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        
        return meals.count
    
    }
    
    func tableView(_ tableView: UITableView,heightForRowAt indexPath:IndexPath) -> CGFloat
    {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Meals", for: indexPath) as! MealsTableViewCell
        
        cell.foodimage.layer.masksToBounds = false
        cell.foodimage.layer.cornerRadius = cell.foodimage.frame.height/2
        cell.foodimage.clipsToBounds = true
        
        if foodimages.count > indexPath.row {
           
            cell.foodimage.image = foodimages[indexPath.row]
            cell.food.text = meals[indexPath.row]
            
        }

        if indexPath.row == 0  {
            
            cell.category.text = "Breakfast"

            
        } else {
            
            if indexPath.row == 1  {
                
                cell.category.text = "Morning Snack"

            } else {
                
                if indexPath.row == 2  {
                    
                    cell.category.text = "Lunch"

                    
                } else {
                    
                    if indexPath.row == 3  {
                        
                        cell.category.text = "Afternoon Snack"

                        
                    } else {
                        
                        if indexPath.row == 4  {
                            
                            cell.category.text = "Dinner"

                        } else {
                            
                            if indexPath.row == 5  {
                                
                                cell.category.text = "Dinner"

                            } else {
                              
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
        
        
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        var this2 = dayofweek.text!
        
        let this3 = formatter.date(from: this2)
        
        var nextdate = Calendar.current.date(byAdding: .day, value: +1, to: this3!)!
        

        dayInWeek = formatter.string(from: nextdate)
        
        dayofweek.text = dayInWeek
        
        loadrelevantday()

       
    }
    
    let today = Date()

    @IBAction func tapBack(_ sender: Any) {
        
        counter -= 1
        
        if counter >= 7 {
            
            counter = 0
            
            loadrelevantday()
            
        } else {
            
            loadrelevantday()
            
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        var this2 = dayofweek.text!
        
        let this3 = formatter.date(from: this2)
        
        var nextdate = Calendar.current.date(byAdding: .day, value: -1, to: this3!)!
        
        
        dayInWeek = formatter.string(from: nextdate)
        
        loadrelevantday()

        dayofweek.text = dayInWeek
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedmeal = meals[indexPath.row]
        selectedimage2 = foodimages[indexPath.row]
        self.performSegue(withIdentifier: "MealToRecipe", sender: self)

    }
}
var selectedimage2 = UIImage()
var selectedcategory = String()
var selectedmeal = String()

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

extension Date {
    var startOfWeek: Date? {
        let gregorian = Calendar(identifier: .gregorian)
        guard let sunday = gregorian.date(from: gregorian.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)) else { return nil }
        return gregorian.date(byAdding: .day, value: 1, to: sunday)
    }
    
    var endOfWeek: Date? {
        let gregorian = Calendar(identifier: .gregorian)
        guard let sunday = gregorian.date(from: gregorian.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)) else { return nil }
        return gregorian.date(byAdding: .day, value: 7, to: sunday)
    }
}

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
        
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        dayInWeek = "Monday"
        loadrelevantday()
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
    @IBAction func D2(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        dayInWeek = "Tuesday"
        loadrelevantday()
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
        
    
    @IBAction func D3(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        dayInWeek = "Wednesday"
        loadrelevantday()
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
    @IBAction func D4(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        dayInWeek = "Thursday"
        loadrelevantday()
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
    @IBAction func D5(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        dayInWeek = "Friday"
        loadrelevantday()

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
    @IBAction func D6(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        dayInWeek = "Saturday"
        loadrelevantday()
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
    @IBAction func D7(_ sender: Any) {
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        dayInWeek = "Sunday"
       loadrelevantday()
        
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
    var startdate = String()
    var enddate = String()
    @IBOutlet weak var tableVie: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()
        
        self.becomeFirstResponder() // To get shake gesture
        
        tableVie.estimatedRowHeight = 68.0
        tableVie.rowHeight = UITableViewAutomaticDimension
        selectedinformation = "THE CLEANSE PLAN"
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
            dateFormat1.dateFormat = "MMM d"
            var startWeek2 = dateFormat1.string(from: startWeek!)
            var dateFormat12 = DateFormatter()
            dateFormat12.dateFormat = "MMM d"
            var endWeek2 = dateFormat12.string(from: endWeek!)
            print(startWeek2)
            print(endWeek2)
            startdate = startWeek2
            enddate = endWeek2
            dayofweek.text = "\(startdate) - \(enddate)"
            
            loadtoday()
            loaddates()
            
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

    func loaddates() {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d"
        var this3 = formatter.date(from: startdate)
        
        
        var n1 = Calendar.current.date(byAdding: .day, value: 0, to: this3!)!
        var n2 = Calendar.current.date(byAdding: .day, value: +1, to: this3!)!
        var n3 = Calendar.current.date(byAdding: .day, value: +2, to: this3!)!
        var n4 = Calendar.current.date(byAdding: .day, value: +3, to: this3!)!
        var n5 = Calendar.current.date(byAdding: .day, value: +4, to: this3!)!
        var n6 = Calendar.current.date(byAdding: .day, value: +5, to: this3!)!
        var n7 = Calendar.current.date(byAdding: .day, value: +6, to: this3!)!
        
        formatter.dateFormat = "d"
        var d1text = formatter.string(from: n1)
        var d2text = formatter.string(from: n2)
        var d3text = formatter.string(from: n3)
        var d4text = formatter.string(from: n4)
        var d5text = formatter.string(from: n5)
        var d6text = formatter.string(from: n6)
        var d7text = formatter.string(from: n7)
        
        
        d1.setTitle(d1text, for: .normal)
        d2.setTitle(d2text, for: .normal)
        d3.setTitle(d3text, for: .normal)
        d4.setTitle(d4text, for: .normal)
        d5.setTitle(d5text, for: .normal)
        d6.setTitle(d6text, for: .normal)
        d7.setTitle(d7text, for: .normal)
        
    }
    
    @IBAction func tapForward(_ sender: Any) {
        
        counter += 1
        
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d"
        var this2 = startdate
        let this3 = formatter.date(from: this2)
        var this4 = enddate
        let this5 = formatter.date(from: this4)
        
        var nextdate = Calendar.current.date(byAdding: .day, value: +7, to: this3!)!
        var nextdate2 = Calendar.current.date(byAdding: .day, value: +7, to: this5!)!

        startdate = formatter.string(from: nextdate)
        enddate = formatter.string(from: nextdate2)

        dayofweek.text = "\(startdate) - \(enddate)"
       
        loaddates()
        
        loadrelevantday()
        
        tapback.alpha = 1
       
    }
    
    let today = Date()

    @IBOutlet weak var tapback: UIButton!
    @IBAction func tapBack(_ sender: Any) {
        
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        
        counter -= 1
        
        if counter >= 7 {
            
            counter = 0
            
            loadrelevantday()
            
            tapback.alpha = 0
            
        } else {
            
            if counter <= 1 {
                
                tapback.alpha = 0
                
                loadrelevantday()

            } else {
                
                loadrelevantday()

                
            }
            
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MMM d"
        var this2 = startdate
        let this3 = formatter.date(from: this2)
        var this4 = enddate
        let this5 = formatter.date(from: this4)
        
        var nextdate = Calendar.current.date(byAdding: .day, value: -7, to: this3!)!
        var nextdate2 = Calendar.current.date(byAdding: .day, value: -7, to: this5!)!
        
        startdate = formatter.string(from: nextdate)
        enddate = formatter.string(from: nextdate2)
        
        dayofweek.text = "\(startdate) - \(enddate)"
        
        loaddates()
        
        loadrelevantday()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedmeal = meals[indexPath.row]
        selectedimage2 = foodimages[indexPath.row]
        self.performSegue(withIdentifier: "MealToRecipe", sender: self)

    }
    
    func loadtoday() {
        
        
        
            if dayInWeek == "Sunday" {
                
                loadsunday()
                
            } else {
                
                if dayInWeek == "Monday" {
                    
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
                } else {
                    
                    if dayInWeek == "Tuesday" {
                        
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
                    } else {
                        
                        
                        if dayInWeek == "Wednesday" {
                            
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
                        } else {
                            
                            if dayInWeek == "Thursday" {
                                
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
                                
                            } else {
                                
                                if dayInWeek == "Friday" {
                                    
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
                                    
                                } else {
                                    
                                    if dayInWeek == "Saturday" {
                                        
                                        loadsaturday()
                                        
                                    } else {
                                        
                                        if dayInWeek == "Sunday" {
                                            
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
    
    func loadrelevantday() {
        
        meals.removeAll()
        foodimages.removeAll()
        
        if counter == 1 {
            
            
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
            
        } else {
            
            if counter == 2 {
                
                
                if dayInWeek == "Sunday" {
                    
                    loadmonday()
                    
                } else {
                    
                    if dayInWeek == "Monday" {
                        
                        loadtuesday()
                        
                    } else {
                        
                        if dayInWeek == "Tuesday" {
                            
                            loadwednesday()
                            
                        } else {
                            
                            
                            if dayInWeek == "Wednesday" {
                                
                                loadthursday()
                                
                            } else {
                                
                                if dayInWeek == "Thursday" {
                                    
                                    loadfriday()
                                    
                                } else {
                                    
                                    if dayInWeek == "Friday" {
                                        
                                        loadsaturday()
                                    } else {
                                        
                                        if dayInWeek == "Saturday" {
                                            
                                            loadsunday()
                                            
                                        } else {
                                            
                                            if dayInWeek == "Sunday" {
                                                
                                                loadmonday()
                                                
                                            } else {
                                                
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                        }
                        
                    }
                    
                }
                
            } else {
                
                if counter == 3 {
                    
                    
                    if dayInWeek == "Sunday" {
                        
                        loadtuesday()
                        
                    } else {
                        
                        if dayInWeek == "Monday" {
                            
                            loadwednesday()
                            
                        } else {
                            
                            if dayInWeek == "Tuesday" {
                                
                                loadthursday()
                                
                            } else {
                                
                                
                                if dayInWeek == "Wednesday" {
                                    
                                    loadfriday()
                                    
                                } else {
                                    
                                    if dayInWeek == "Thursday" {
                                        
                                        loadsaturday()
                                        
                                    } else {
                                        
                                        if dayInWeek == "Friday" {
                                            
                                            loadsunday()
                                        } else {
                                            
                                            if dayInWeek == "Saturday" {
                                                
                                                loadmonday()
                                                
                                            } else {
                                                
                                                if dayInWeek == "Sunday" {
                                                    
                                                    loadtuesday()
                                                    
                                                } else {
                                                    
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                            }
                            
                        }
                        
                    }
                    
                } else {
                    
                    if counter == 4 {
                        
                        
                        if dayInWeek == "Sunday" {
                            
                            loadthursday()
                            
                        } else {
                            
                            if dayInWeek == "Monday" {
                                
                                loadfriday()
                                
                            } else {
                                
                                if dayInWeek == "Tuesday" {
                                    
                                    loadsaturday()
                                    
                                } else {
                                    
                                    
                                    if dayInWeek == "Wednesday" {
                                        
                                        loadsunday()
                                        
                                    } else {
                                        
                                        if dayInWeek == "Thursday" {
                                            
                                            loadmonday()
                                            
                                        } else {
                                            
                                            if dayInWeek == "Friday" {
                                                
                                                loadtuesday()
                                            } else {
                                                
                                                if dayInWeek == "Saturday" {
                                                    
                                                    loadwednesday()
                                                    
                                                } else {
                                                    
                                                    if dayInWeek == "Sunday" {
                                                        
                                                        loadthursday()
                                                        
                                                    } else {
                                                        
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                }
                                
                            }
                            
                        }
                        
                    } else {
                        
                        if counter == 5 {
                            
                            
                            if dayInWeek == "Sunday" {
                                
                                loadmonday()
                                
                            } else {
                                
                                if dayInWeek == "Monday" {
                                    
                                    loadtuesday()
                                    
                                } else {
                                    
                                    if dayInWeek == "Tuesday" {
                                        
                                        loadwednesday()
                                        
                                    } else {
                                        
                                        
                                        if dayInWeek == "Wednesday" {
                                            
                                            loadthursday()
                                            
                                        } else {
                                            
                                            if dayInWeek == "Thursday" {
                                                
                                                loadfriday()
                                                
                                            } else {
                                                
                                                if dayInWeek == "Friday" {
                                                    
                                                    loadsaturday()
                                                } else {
                                                    
                                                    if dayInWeek == "Saturday" {
                                                        
                                                        loadsunday()
                                                        
                                                    } else {
                                                        
                                                        if dayInWeek == "Sunday" {
                                                            
                                                            loadmonday()
                                                            
                                                        } else {
                                                            
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                    }
                                    
                                }
                                
                            }
                            
                        } else {
                            
                            if counter == 6 {
                                
                                
                                if dayInWeek == "Sunday" {
                                    
                                    loadmonday()
                                    
                                } else {
                                    
                                    if dayInWeek == "Monday" {
                                        
                                        loadtuesday()
                                        
                                    } else {
                                        
                                        if dayInWeek == "Tuesday" {
                                            
                                            loadwednesday()
                                            
                                        } else {
                                            
                                            
                                            if dayInWeek == "Wednesday" {
                                                
                                                loadthursday()
                                                
                                            } else {
                                                
                                                if dayInWeek == "Thursday" {
                                                    
                                                    loadfriday()
                                                    
                                                } else {
                                                    
                                                    if dayInWeek == "Friday" {
                                                        
                                                        loadsaturday()
                                                    } else {
                                                        
                                                        if dayInWeek == "Saturday" {
                                                            
                                                            loadsunday()
                                                            
                                                        } else {
                                                            
                                                            if dayInWeek == "Sunday" {
                                                                
                                                                loadmonday()
                                                                
                                                            } else {
                                                                
                                                                
                                                            }
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                        }
                                        
                                    }
                                    
                                }
                                
                            } else {
                                
                                if counter == 2 {
                                    
                                    
                                    if dayInWeek == "Sunday" {
                                        
                                        loadmonday()
                                        
                                    } else {
                                        
                                        if dayInWeek == "Monday" {
                                            
                                            loadtuesday()
                                            
                                        } else {
                                            
                                            if dayInWeek == "Tuesday" {
                                                
                                                loadwednesday()
                                                
                                            } else {
                                                
                                                
                                                if dayInWeek == "Wednesday" {
                                                    
                                                    loadthursday()
                                                    
                                                } else {
                                                    
                                                    if dayInWeek == "Thursday" {
                                                        
                                                        loadfriday()
                                                        
                                                    } else {
                                                        
                                                        if dayInWeek == "Friday" {
                                                            
                                                            loadsaturday()
                                                        } else {
                                                            
                                                            if dayInWeek == "Saturday" {
                                                                
                                                                loadsunday()
                                                                
                                                            } else {
                                                                
                                                                if dayInWeek == "Sunday" {
                                                                    
                                                                    loadmonday()
                                                                    
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
                }
            }
        }
        
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

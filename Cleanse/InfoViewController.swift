//
//  InfoViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 10/3/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit
import Firebase
import FirebaseCore
import FirebaseStorage
import FirebaseDatabase
import FirebaseAuth

var selectedinformation = String()
var titles = [String]()
var descriptions = [String]()
var descriptions2 = [String]()

class InfoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBAction func tapBack(_ sender: Any) {
        
        self.dismiss(animated: true, completion: {
            
        })
    }
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var headline: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        ref = Database.database().reference()

        queryfordict()
        
        headline.text = selectedinformation
        tableView.estimatedRowHeight = 68.0
        tableView.rowHeight = UITableViewAutomaticDimension
        // Do any additional setup after loading the view.
    }
    
    func queryfordict() {
        
        titles.removeAll()
        descriptions.removeAll()
        descriptions2.removeAll()

        if selectedinformation == "MACRONUTRIENTS EXPLAINED" {
            
            titles.append(" ")
            descriptions.append("Macronutrients are protein, carbohydrates, and fat. Every gram of each macronutrient contains calories. Protein and carbohydrates contain 4 calories per gram, and fat contains 9 calories per gram. The way your body responds to each macronutrient is very different. Although protein and carbohydrates have the same amount of calories per gram, the effect on your body is not the same. This is why just counting calories is not an effective way of dieting. Eating carbohydrates, especially high glycemic carbs, increase the levels of the hormone insulin. Chronically high insulin levels can make the cells more resistant to insulin, leading to weight gain and diabetes")
            descriptions2.append("Also, some foods burn more calories to digest than others. This is called the thermic effect of food. Animal protein and leafy greens take much more energy to digest than white bread and candy. This is why counting macronutrients is so important. It is a way to make sure your calories are coming from foods that will help you be lean and support muscle repair and growth. In your grocery list you will find tons of examples of proteins, carbs, and fats.")
            titles.append("PROTEIN")
            descriptions.append("Protein is a vital macronutrient, and the most important macronutrient to build muscle. Protein is a class of nitrogen-containing compounds formed by amino acids. These amino acids are used by our bodies to repair, and build muscle tissue. A high concentration of amino acids in the blood stream is imperative to keeping your body in an anabolic (muscle building) state. This will allow your body every chance to repair and build muscle. This also will reduce day to day recovery time and muscle soreness. This is why we recommend consuming at least 1 gram of protein per pound of body weight. This amount of protein will ensure speedy recovery and muscle growth.")
            descriptions2.append("It is best to get all recommended protein for the day from whole foods. This doesn't mean that protein supplements aren't great, but they have more purpose for post workout recovery and should not be used to replace a meal unless it is a last resort. To keep things simple, we have a rule. You are only allowed to consume 1/4 of your protein requirements for the day from protein shakes. Grass fed beef, free range chicken and eggs, wild caught fish, and wild game are top picks for protein sources. These sources are the best for health, vitality, longevity, and quality of life. They are high in omega-3 fatty acids and have a low inflammatory response. With that said, history has proven that muscle can be built eating canned tuna, canned chicken, etc.. We know that these types of foods are very convenient, and are sometimes necessary when eating 4-5 meals a day and living a busy lifestyle.")
            titles.append("PRO - TIP")
            descriptions.append("Most of our new members aren't eating enough protein to gain mass and recover properly. If this is you, it's probably not a good idea to jump right into doubling or tripling the amount of protein you regularly consume. This can cause digestive issues. As with any macronutrient, the more frequently you consume it, the more efficient your body becomes at digesting it. If you regularly consume more than 50 grams of protein less than what your diet prescribes, it is a good idea to start lower than the recommended amount. Start with adding an extra 20-30 grams then add 3 grams of protein every day until you reach the recommended amount.")
            descriptions2.append(" ")
            titles.append("FAT")
            descriptions.append("Fat is essential for many functions in the body. Fat is an essential component of cell membranes and nerve fibers, it is our primary energy source in a resting state, and all steroid hormones in the body are produced from cholesterol. Fat yields the most calories per gram at 9 and because of this, it is very easy to eat too many calories if you consume too much fat. This plan has enough fat for healthy body function, but is low enough to keep your body fat in check.")
            descriptions2.append(" ")
            titles.append("CARBOHYDRATES")
            descriptions.append("Carbohydrates are turned into glucose (simple sugar) during digestion. Upon the ingestion of carbohydrates, insulin is released and binds to muscle tissue cells to shuttle glucose into the cell to be stored as muscle glycogen. Muscle glycogen is the body's stored source of carbohydrates. Muscle glycogen is stored by skeletal muscle and used as an energy source during exercise. The common mistake made by most people (and the primary reason for the obesity epidemic) is eating carbohydrates all day long.")
            descriptions2.append("The body can only store a limited amount of carbohydrates as muscle glycogen. Elite athletes have ability to store more than the average Joe, but there is still a limit. Once muscle glycogen has been restored to capacity, all excess carbohydrates must go somewhere. If you are not actively using these excess carbohydrates for energy, they will be turned into fat. This is why cycling carbohydrates works so effectively. You are guaranteeing that carbs are being used to restore muscle glycogen. Not eating carbs all the time also allows your body to become more sensitive to insulin because you are not constantly flooding your body with the hormone.")
            
            tableView.reloadData()
        }
        
        if selectedinformation == "THE CLEANSE PLAN" {
            
            titles.append("WHY 30 DAYS")
            descriptions.append("First things first, why 30 days? The answer is simple. We developed this challenge to mimic the way professionals prep for a show, and to show you how incredible the transformation can be over 3 weeks. One of the questions we are asked the most is how to prep for a contest. The reality is there are many intricacies based of the individual, and those tweaks are honed in with years of experience, but this 30 day challenge will give you all the tools you need to get an inside look at the final days leading up to a contest, and what it takes to peak your body.")
            descriptions2.append("")
            
            titles.append("WEIGHT LOSS NUTRITION")
            descriptions.append("Everybody wants to lose body fat and increase muscle mass. The problem is the information out there can be very confusing as to which actual nutritional protocols to follow to get optimal results. The good news is we are going to share with you the secret to doing both simultaneously. We are going to give you the best way to burn fat and gain muscle: and it is Carb Cycling. Carb cycling is a method, which times up carbohydrate intake with training protocols to optimize hormonal response.")
            
            descriptions2.append("Carb cycling leading up to a show, photo shoot or beach vacation should be based around a few factors; Body Weight, Body Fat Percentage, Muscle Mass, Training Goals, Training Style, etc. The Carb Cycle in this 30 day challenge is tailored to the training we are providing you. The exercises, sets, reps and rest intervals are all designed with a specifc response in mind. The carb cycle compliments the training with structured refeeds and caloric defcits to match High Intensity, Low Intensity and Rest Days. Long story short, all the guess work has been taken out. Follow the nutritional protocols with the training protocols, and you'll lose weight AND gain muscle at the same time.")
            
            titles.append("NUTRIENT TIMING")
            descriptions.append("Nutrient Timing is the idea that the timing of nutrient intake around training, in addition to the quality of food selection based around hormonal response, is paramount to optimal body composition change. For example, simple carbohydrate sources higher in glucose immediately following training will bring down cortisol levels to get the body in an anabolic state, but it will not be as readily converted and stored as fat as a fructose source. Additionally, 200 grams of carbohydrates from a sweet potato will affect your body significantly better than 200 grams of carbohydrates from Twinkies.")
            descriptions2.append("")
            
            titles.append("RESISTANCE TRAINING")
            descriptions.append("The next piece of the puzzle is pairing the right exercises to take advantage of Testosterone and Growth Hormone. To gain muscle mass, you need to drive up testosterone. To drive up testosterone, I've given you large compound movements, which have been proven to get your T driven up. In addition, research is clear that when you drive up blood lactate levels, the body responds by releasing Growth Hormone. What is the body's response to growth hormone? Body fat loss! To drive up GH levels, I've combined high volume training with low rest intervals. Have a trash can handy!")
            descriptions2.append("")
            
            titles.append("HIIT BENEFITS")
            descriptions.append("Too often we see people spending hours at the gym doing cardio in the fat burning zone. To be clear, these workouts are great and they do have many benefits physiologically and aesthetically, but if we are talking about the most bang for your buck in a short amount of time, high intensity interval training is the king. The physiological effects of intense interval training are much different from low and slow cardio. This is because of EPOC - Excess post-exercise oxygen consumption. After a session of intense interval training, your body's response is to increase the consumption of oxygen to bring the body back to homeostasis. This increased oxygen consumption lasts for hours and accompanied by the need for more fuel. If you want to increase your metabolism, do high intensity interval training.")
            descriptions2.append("")
            
            titles.append("CARB CYCLING")
            descriptions.append("Carb cycling means you will change the amount carbohydrates you eat from day to day. We have two high carb days a week and the rest of the week is low carb. The high carb days are always the day before leg training since those are the hardest lifting days of the week. Since it can take up to 24 hours to restore muscle glycogen, your high carb day has the biggest impact on the next day.")
            descriptions2.append("")
            
            titles.append("ADDED FATS")
            descriptions.append("We did not add extra fats to the meal plan because the is a very low fat diet. Your first meal of the day will be moderately high in fat and the rest will be very low fat. Try to avoid using high fat cooking oils to prepare your foods. At most, use enough coconut oil to cover the bottom of the pan by rubbing it around with my hand. This is a great technique to maximize the coverage of the oil without having to use very much.")
            descriptions2.append(" ")
            
            titles.append("SAUCES")
            descriptions.append("This is where most people get into trouble when counting macros on a low fat diet. A tablespoon of full fat ranch dressing is close to 10 grams of fat. Things like this can de-rail your progress very quickly. Hot sauce is definitely a go to during prep because it adds so much flavor and most have almost zero calories. If you don't like hot sauce, there are some great low carb/low fat barbeque sauce options.")
            descriptions2.append(" ")
            
            titles.append("SPICES & SODIUM")
            descriptions.append("The biggest things to look out for when adding spices to your food is to make sure the spice doesn't contain any carbohydrates. Sometimes spice blends can be very high in sugar. For sodium, don't change anything out of the ordinary. Just salt to taste. That's it. You're ready to get started!")
            descriptions2.append(" ")
            

            tableView.reloadData()
        }
        
        if selectedinformation == "Workouts" {
            
            tableView.reloadData()
        }
        
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if titles.count > 0 {
            
            return titles.count
            
        } else {
            
            return 0
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Information", for: indexPath) as! InfoTableViewCell
        
        if titles.count > 0  {
            
            cell.headlinelabel.text = titles[indexPath.row]
            
            cell.descriptionlabel.text = descriptions[indexPath.row]
            
            cell.description2.text = descriptions2[indexPath.row]
            
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

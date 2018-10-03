//
//  WorkoutViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 9/1/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit

var workoutimages = [UIImage]()
var workoutnames = [String]()
var workoutdays = [String]()


var lightblue = UIColor(red:0.76, green:0.78, blue:0.84, alpha:1.0)

class WorkoutViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBAction func tapBack(_ sender: Any) {
    }
    @IBAction func tapNext(_ sender: Any) {
    }
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var todaylabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        programtitle.text = selectedprogram
        programimage.image = UIImage(named: "\(selectedprogram)")
        
        if workoutdays.count > 0 {
            
            queryforlastcompleted()
            loadworkouts()
            
        } else {
            
            workoutdays.removeAll()
            workoutnames.removeAll()
            workoutimages.removeAll()
            loadworkouts()
            queryforlastcompleted()
        }
        
    
        // Do any additional setup after loading the view.
    }
    
    func queryforlastcompleted() {
        
        ref?.child(uid).child(selectedprogram).observeSingleEvent(of: .value, with: { (snapshot) in
            
            var value = snapshot.value as? NSDictionary
            
            if var activityvalue = value?["Last Completed"] as? String {
                
                self.lastcompleted = Int(activityvalue)!
                self.collectionView.scrollToItem(at:IndexPath(item: self.lastcompleted, section: 0), at: .right, animated: false)
                
                self.collectionView.reloadData()

            } else {
                
                self.lastcompleted = 0
                
                self.collectionView.scrollToItem(at:IndexPath(item: self.lastcompleted, section: 0), at: .right, animated: false)
                
                self.collectionView.reloadData()

            }
            
        })
        
    }

    var lastcompleted = Int()
    var times = [String]()
    var quotes = [String]()
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadworkouts() {
        
        workoutdays.removeAll()
        times.removeAll()
        quotes.removeAll()
        
        workoutdays.append("1")
        workoutdays.append("2")
        workoutdays.append("3")
        workoutdays.append("4")
        workoutdays.append("5")
        workoutdays.append("6")
        workoutdays.append("7")
        workoutdays.append("8")
        workoutdays.append("9")
        workoutdays.append("10")
        workoutdays.append("11")
        workoutdays.append("12")
        workoutdays.append("13")
        workoutdays.append("14")
        workoutdays.append("15")
        workoutdays.append("16")
        workoutdays.append("17")
        workoutdays.append("18")
        workoutdays.append("19")
        workoutdays.append("20")
        workoutdays.append("21")
        workoutdays.append("22")
        workoutdays.append("23")
        workoutdays.append("24")
        workoutdays.append("25")
        workoutdays.append("26")
        workoutdays.append("27")
        workoutdays.append("28")
        workoutdays.append("29")
        workoutdays.append("30")

        times.append("11 mins")
        times.append("11 mins")
        times.append("11 mins")
        times.append("11 mins")
        times.append("11 mins")
        times.append("11 mins")
        times.append("12 mins")
        times.append("12 mins")
        times.append("12 mins")
        times.append("12 mins")
        times.append("12 mins")
        times.append("11 mins")
        times.append("13 mins")
        times.append("13 mins")
        times.append("13 mins")
        times.append("13 mins")
        times.append("14 mins")
        times.append("14 mins")
        times.append("14 mins")
        times.append("14 mins")
        times.append("14 mins")
        times.append("14 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        times.append("15 mins")
        
        quotes.append("I’m working on a new me not because the old me is  bad but because the old me can improve.")
        quotes.append("You can have a choice. You can throw in the towel or you can use it to wipe the sweat off your face.")
        quotes.append("I will not starve for this, but I will work hard for this. It may take longer doing it the healthy and right way. But it will last longer this way. I will be better and I will be happy.")
        quotes.append("I’m not training for a 5k. I’m not preparing for a competition. I’m not trying to set a new record. I’m not trying to impress you. I’m saving my life.")
        quotes.append("Don’t stop trying just because you’ve hit the wall. Progress is progress no matter how small.")
        quotes.append("No matter how many mistakes you make or how slow you progress, you are still way ahead of everyone who isn’t trying.")
        quotes.append("For me, exercise is more than just physical – it’s therapeutic.")
        quotes.append("I will make sweat my best accessory. I will run harder than my mascara.")
        quotes.append("It is a shame for a woman to grow old without ever seeing the strength and beauty of which her body is capable.")
        quotes.append("Strength doesn’t come from what you can do. It comes from overcoming the things you once thought you couldn’t.")
        quotes.append("You have to believe in yourself when no one else does – that makes you a winner right there.")
        quotes.append("A lot of women like to be super tiny, but I don’t want a child’s body. I want a woman’s body that is extremely fit.")
        quotes.append("Most obstacles melt away when we make up our minds to walk boldly through them.")
        quotes.append("Don’t quit you’re already in pain. You’re already hurt. Get a reward from it.")
        quotes.append("Motivation is what gets you started. Habit is what keeps you going.")
        quotes.append("I don’t want another girl’s body. I want my body, but leaner, stronger, and healthier.")
        quotes.append("What seems impossible today will one day become your warm up.")
        quotes.append("Create health habits, not restrictions.")
        quotes.append("Get fit in the gym; lose weight in the kitchen.")
        quotes.append("I may not be the strongest, I may not be the fastest, but I’ll be darned if I’m not trying my hardest.")
        quotes.append("Losing weight is hard. Being overweight is hard. Choose your hard.")
        quotes.append("Crawling, falling, puking, crying, blood, and pain are acceptable. Quitting is not.")
        quotes.append("Wake up with determination; Go to bet with satisfaction.")
        quotes.append("Make your body the sexiest outfit you own.")
        quotes.append("Sweat, smile and repeat.")
        quotes.append("The question isn’t “Can you?” It’s “Will you?”")
        quotes.append("An hour workout is 4% of your day. No excuses.")
        quotes.append("You are what you eat… so don’t be fast, cheap, easy or fake.")

        quotes.append("I can and I will.")

        quotes.append("Workout because you love your body not because you hate it.")

        quotes.append("Clear your mind of can’t.")

        quotes.append("It’s not always easy, but it’s always worth it.")

        quotes.append("Don’t stop when it hurts; stop when you’re done.")

        quotes.append("It hurts now, but one day it’ll be your warm up.")

        quotes.append("Stop wishing and start doing.")


        collectionView.reloadData()
       
    }
    @IBOutlet weak var programimage: UIImageView!
    
    @IBOutlet weak var programtitle: UILabel!
    func loaddictionaries() {
        

        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Back")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Back")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Back")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Back")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Back")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Back")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Back")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Back")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Back")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Back")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Back")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Back")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Back")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Back")
        workoutnames.append("Rest")
//        workoutimages.append(UIImage(named: "Squat1")!)
//        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
//        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
//        workoutimages.append(UIImage(named: "Spine Stretch2")!)
//        workoutimages.append(UIImage(named: "Squat1")!)
//        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
//        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
//        workoutimages.append(UIImage(named: "Spine Stretch2")!)
//        workoutimages.append(UIImage(named: "Squat1")!)
//        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
//        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
//        workoutimages.append(UIImage(named: "Spine Stretch2")!)
//        workoutimages.append(UIImage(named: "Squat1")!)
//        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
//        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
//        workoutimages.append(UIImage(named: "Spine Stretch2")!)
//        workoutimages.append(UIImage(named: "Squat1")!)
//        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
//        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
//        workoutimages.append(UIImage(named: "Spine Stretch2")!)
//        workoutimages.append(UIImage(named: "Squat1")!)
//        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
//        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
//        workoutimages.append(UIImage(named: "Spine Stretch2")!)
//        workoutimages.append(UIImage(named: "Squat1")!)
//        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
//        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
//        workoutimages.append(UIImage(named: "Spine Stretch2")!)
//        workoutimages.append(UIImage(named: "Squat1")!)
//        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
//        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
//        workoutimages.append(UIImage(named: "Spine Stretch2")!)
//        workoutimages.append(UIImage(named: "Squat1")!)
//        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
//        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
//        workoutimages.append(UIImage(named: "Spine Stretch2")!)
//        workoutimages.append(UIImage(named: "Squat1")!)
//        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
//        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
//        workoutimages.append(UIImage(named: "Spine Stretch2")!)
//        workoutimages.append(UIImage(named: "Squat1")!)
//        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
//        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
//        workoutimages.append(UIImage(named: "Spine Stretch2")!)
//        workoutimages.append(UIImage(named: "Squat1")!)
//        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
//        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
//        workoutimages.append(UIImage(named: "Spine Stretch2")!)
        collectionView.reloadData()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
     
        
        return workoutdays.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        
        daynumber = indexPath.row
        selectedday = workoutdays[indexPath.row]
        
        if indexPath.row == 7 || indexPath.row == 11 || indexPath.row == 15 || indexPath.row == 19 || indexPath.row == 23 || indexPath.row == 27 || indexPath.row == 3 {
            
            selectedday = workoutdays[indexPath.row]
            
            ref?.child(uid).child(selectedprogram).updateChildValues(["Last Completed" : "\(selectedday)"])
                        
            self.performSegue(withIdentifier: "RestToCompleted", sender: self)
            
        } else {
            
            
            print(selectedday)
            self.performSegue(withIdentifier: "WorkoutToExercises", sender: self)

        }

    }
    
    var darkpurple = UIColor(red:0.10, green:0.10, blue:0.20, alpha:1.0)

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Workout", for: indexPath) as! WorkoutCollectionViewCell
        
        
        cell.daytitle.text = "Day \(workoutdays[indexPath.row])"

        cell.blabel.layer.cornerRadius = 10.0
        cell.blabel.layer.masksToBounds = true
        if indexPath.row > lastcompleted {
            
            cell.buttonimage.image = UIImage(named: "DarkBlueButton")
            cell.isUserInteractionEnabled = false
            cell.label2.text = "WORKOUT LOCKED"
            cell.daytitle.textColor = lightblue
            cell.timelabel.textColor = lightblue
            cell.quotelabel.textColor = lightblue
        } else {
            
            cell.buttonimage.image = UIImage(named: "GreenBlueButton")
            cell.isUserInteractionEnabled = true
            cell.label2.text = "START WORKOUT"
            cell.daytitle.textColor = .white
            cell.timelabel.textColor = .white
            cell.quotelabel.textColor = .white
        }
        if workoutdays.count > 0 && times.count > 0 && quotes.count > 0 {
            
            cell.daytitle.text = "Day \(workoutdays[indexPath.row])"
            cell.timelabel.text = times[indexPath.row]
            cell.quotelabel.text = "'\(quotes[indexPath.row])'"
        }
        return cell
        
    }
    
}

var selectedtitle = String()

var selectedday = String()

var greyl = UIColor(red:0.96, green:0.96, blue:0.97, alpha:1.0)
var daynumber = Int()

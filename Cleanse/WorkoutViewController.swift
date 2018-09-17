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

        
        if workoutdays.count > 0 {
            
            queryforlastcompleted()
            
        } else {
            
            workoutdays.removeAll()
            workoutnames.removeAll()
            workoutimages.removeAll()
            loaddictionaries()
            queryforlastcompleted()
        }
        // Do any additional setup after loading the view.
    }
    
    func queryforlastcompleted() {
        
        ref?.child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
            
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
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loaddictionaries() {
        
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
        workoutimages.append(UIImage(named: "Squat1")!)
        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
        workoutimages.append(UIImage(named: "Spine Stretch2")!)
        workoutimages.append(UIImage(named: "Squat1")!)
        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
        workoutimages.append(UIImage(named: "Spine Stretch2")!)
        workoutimages.append(UIImage(named: "Squat1")!)
        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
        workoutimages.append(UIImage(named: "Spine Stretch2")!)
        workoutimages.append(UIImage(named: "Squat1")!)
        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
        workoutimages.append(UIImage(named: "Spine Stretch2")!)
        workoutimages.append(UIImage(named: "Squat1")!)
        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
        workoutimages.append(UIImage(named: "Spine Stretch2")!)
        workoutimages.append(UIImage(named: "Squat1")!)
        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
        workoutimages.append(UIImage(named: "Spine Stretch2")!)
        workoutimages.append(UIImage(named: "Squat1")!)
        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
        workoutimages.append(UIImage(named: "Spine Stretch2")!)
        workoutimages.append(UIImage(named: "Squat1")!)
        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
        workoutimages.append(UIImage(named: "Spine Stretch2")!)
        workoutimages.append(UIImage(named: "Squat1")!)
        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
        workoutimages.append(UIImage(named: "Spine Stretch2")!)
        workoutimages.append(UIImage(named: "Squat1")!)
        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
        workoutimages.append(UIImage(named: "Spine Stretch2")!)
        workoutimages.append(UIImage(named: "Squat1")!)
        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
        workoutimages.append(UIImage(named: "Spine Stretch2")!)
        workoutimages.append(UIImage(named: "Squat1")!)
        workoutimages.append(UIImage(named: "Triple Tricep Push Up1")!)
        workoutimages.append(UIImage(named: "Kneeling Oblique Crunch1")!)
        workoutimages.append(UIImage(named: "Spine Stretch2")!)
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
        
        
        selectedtitle = workoutnames[indexPath.row]
        selectedday = workoutdays[indexPath.row]

        if workoutnames[indexPath.row] == "Rest" {
            
            selectedtitle = workoutnames[indexPath.row]
            selectedday = workoutdays[indexPath.row]
            
            ref?.child(uid).updateChildValues(["Last Completed" : "\(selectedday)"])
                        
            self.performSegue(withIdentifier: "RestToCompleted", sender: self)
            
        } else {
            
            
            print(selectedday)
            self.performSegue(withIdentifier: "WorkoutToExercises", sender: self)

        }

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Workout", for: indexPath) as! WorkoutCollectionViewCell
        
        cell.workoutimage.clipsToBounds = true
        cell.workoutimage.layer.cornerRadius   = 10.0
        cell.daynumber.text = "Day \(workoutdays[indexPath.row])"
        cell.layer.cornerRadius = 10.0
        cell.clipsToBounds = true

        cell.backgroundColor = greyl
        
        if indexPath.row > lastcompleted {
            
            cell.buttonimage.image = UIImage(named: "DarkBlueButton")
            cell.isUserInteractionEnabled = false
            cell.label2.text = "WORKOUT LOCKED"
            cell.daynumber.textColor = lightblue
            cell.daytitle.textColor = lightblue
            
        } else {
            
    cell.buttonimage.image = UIImage(named: "GreenBlueButton")
    cell.isUserInteractionEnabled = true
    cell.label2.text = "START WORKOUT"
            cell.daynumber.textColor = .black
            cell.daytitle.textColor = .black
        }
        if workoutdays.count > 0 {
            
            cell.daynumber.text = "Day \(workoutdays[indexPath.row])"
            cell.daytitle.text = workoutnames[indexPath.row]
            cell.workoutimage.image = workoutimages[indexPath.row]
            
        }
        return cell
        
    }
    
}

var selectedtitle = String()

var selectedday = String()

var greyl = UIColor(red:0.96, green:0.96, blue:0.97, alpha:1.0)


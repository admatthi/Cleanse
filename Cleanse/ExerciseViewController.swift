//
//  ExerciseViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 9/1/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit

var exerciseimages1 = [UIImage]()
var exerciseimages2 = [UIImage]()
var circuittitles = [String]()
var numberofexercises = [String]()
var length = [String]()
var exercisenames = [String]()
var reps = [String]()


class ExerciseViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBAction func tapComplete(_ sender: Any) {
        
        ref?.child(uid).updateChildValues(["Last Completed" : "\(selectedday)"])
        
        self.performSegue(withIdentifier: "ExerciseToCompleted", sender: self)
    }
    @IBOutlet weak var daytitle: UILabel!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        daytitle.text = selectedtitle
        
        // Do any additional setup after loading the view.
        exercisenames.removeAll()
        exerciseimages1.removeAll()
        exerciseimages2.removeAll()
        circuittitles.removeAll()
        numberofexercises.removeAll()
        length.removeAll()
        reps.removeAll()
        
        if selectedtitle == "Legs" {
            
            loadlegs()
            
        } else {
            
            if selectedtitle == "Arms & Abs" {
                
                loadarms()
                
            } else {
             
                if selectedtitle == "Back" {
                    
                    loadback()
                    
                } else {
                    
                    if selectedtitle == "Rest" {
                        
                        
                    } else {
                        
                        
                    }
                    
                }
                
            }
            
        }
    }
    
    func loadlegs() {
        
        circuittitles.append("Circuit 1 & 3")
        numberofexercises.append("4 exercises")
        length.append("7 Minutes")
        length.append("-")
        length.append("-")
        length.append("-")
        numberofexercises.append("-")
        numberofexercises.append("-")
        numberofexercises.append("-")
        circuittitles.append("-")
        circuittitles.append("-")
        circuittitles.append("-")
        circuittitles.append("Circuit 2 & 4")
        numberofexercises.append("4 exercises")
        length.append("7 Minutes")
        length.append("-")
        length.append("-")
        length.append("-")
        numberofexercises.append("-")
        numberofexercises.append("-")
        numberofexercises.append("-")
        circuittitles.append("-")
        circuittitles.append("-")
        circuittitles.append("-")
        exercisenames.append("1. Squats")
        reps.append("12 Reps")
        exerciseimages1.append(UIImage(named: "Squat1")!)
        exerciseimages2.append(UIImage(named: "Squat2")!)
        exercisenames.append("2. Leg Swing")
        reps.append("25 Reps Per Side")
        exerciseimages1.append(UIImage(named: "Leg Swing1")!)
        exerciseimages2.append(UIImage(named: "Leg Swing2")!)
        exerciseimages1.append(UIImage(named: "Glute Bridge1")!)
        exerciseimages2.append(UIImage(named: "Glute Bridge2")!)
        exercisenames.append("3. Glute Bridge")
        reps.append("10 Reps")
        exerciseimages1.append(UIImage(named: "Inner Thigh Lift1")!)
        exerciseimages2.append(UIImage(named: "Inner Thigh Lift2")!)
        exercisenames.append("4. Inner Thigh Lift")
        reps.append("15 Reps Per Side")
        exerciseimages1.append(UIImage(named: "Slide Leg Lift1")!)
        exerciseimages2.append(UIImage(named: "Slide Leg Lift2")!)
        exercisenames.append("1. Slide Leg Lift")
        reps.append("20 Reps Per Side")
        exerciseimages1.append(UIImage(named: "Glute Kickbacks1")!)
        exerciseimages2.append(UIImage(named: "Glute Kickbacks2")!)
        exercisenames.append("2. Glute Kickbacks")
        reps.append("15 Reps Per Side")
        exerciseimages1.append(UIImage(named: "Pulsing Lunges1")!)
        exerciseimages2.append(UIImage(named: "Pulsing Lunges2")!)
        exercisenames.append("3. Pulsing Lunges")
        reps.append("15 Reps Per Side")
        exerciseimages1.append(UIImage(named: "Marching Hip1")!)
        exerciseimages2.append(UIImage(named: "Marching Hip2")!)
        exercisenames.append("4. Marching Hip")
        reps.append("15 Reps Per Side")

        
    }
    
    func loadarms() {
        
        circuittitles.append("Circuit 1 & 3")
        numberofexercises.append("4 exercises")
        length.append("7 Minutes")
        length.append("-")
        length.append("-")
        length.append("-")
        numberofexercises.append("-")
        numberofexercises.append("-")
        numberofexercises.append("-")
        circuittitles.append("-")
        circuittitles.append("-")
        circuittitles.append("-")
        circuittitles.append("Circuit 2 & 4")
        numberofexercises.append("3 exercises")
        length.append("7 Minutes")
        length.append("-")
        length.append("-")
        numberofexercises.append("-")
        numberofexercises.append("-")
        circuittitles.append("-")
        circuittitles.append("-")
        exercisenames.append("1. Triple Tricep Push Up")
        reps.append("10 Reps Per Side")
        exerciseimages1.append(UIImage(named: "Triple Tricep Push Up1")!)
        exerciseimages2.append(UIImage(named: "Triple Tricep Push Up2")!)
        exercisenames.append("2. Lateral Raises")
        reps.append("15 Reps Per Side")
        exerciseimages1.append(UIImage(named: "Lateral Raises1")!)
        exerciseimages2.append(UIImage(named: "Lateral Raises2")!)
        exerciseimages1.append(UIImage(named: "Triceps Extension1")!)
        exerciseimages2.append(UIImage(named: "Triceps Extension2")!)
        exercisenames.append("3. Triceps Extension")
        reps.append("15 Reps")
        exerciseimages1.append(UIImage(named: "Side Plank1")!)
        exerciseimages2.append(UIImage(named: "Side Plank2")!)
        exercisenames.append("4. Side Plank")
        reps.append("30 secs Per Side")
        exerciseimages1.append(UIImage(named: "Slide Leg Lift1")!)
        exerciseimages2.append(UIImage(named: "Slide Leg Lift2")!)
        exercisenames.append("1. Tricep Kickback")
        reps.append("15 Reps")
        exerciseimages1.append(UIImage(named: "Tricep Kickback1")!)
        exerciseimages2.append(UIImage(named: "Tricep Kickback2")!)
        exercisenames.append("2. Squat & Curl")
        reps.append("15 Reps")
        exerciseimages1.append(UIImage(named: "Squat & Curl1")!)
        exerciseimages2.append(UIImage(named: "Squat & Curl2")!)
        exercisenames.append("3. Bent Over Row")
        reps.append("15 Reps")
        exerciseimages1.append(UIImage(named: "Bent Over Row1")!)
        exerciseimages2.append(UIImage(named: "Bent Over Row2")!)
    }
    
    func loadback() {
        
        circuittitles.append("Circuit 1 & 3")
        numberofexercises.append("4 exercises")
        length.append("7 Minutes")
        length.append("-")
        length.append("-")
        length.append("-")
        numberofexercises.append("-")
        numberofexercises.append("-")
        numberofexercises.append("-")
        circuittitles.append("-")
        circuittitles.append("-")
        circuittitles.append("-")
        circuittitles.append("Circuit 2 & 4")
        numberofexercises.append("4 exercises")
        length.append("7 Minutes")
        length.append("-")
        length.append("-")
        length.append("-")
        numberofexercises.append("-")
        numberofexercises.append("-")
        numberofexercises.append("-")
        circuittitles.append("-")
        circuittitles.append("-")
        circuittitles.append("-")
        exercisenames.append("1. Bird Dog")
        reps.append("15 Reps")
        exerciseimages1.append(UIImage(named: "Bird Dog1")!)
        exerciseimages2.append(UIImage(named: "Bird Dog2")!)
        exercisenames.append("2. Lying Knee Hug")
        reps.append("15 Reps")
        exerciseimages1.append(UIImage(named: "Lying Knee Hug1")!)
        exerciseimages2.append(UIImage(named: "Lying Knee Hug2")!)
        exerciseimages1.append(UIImage(named: "Spine Stretch1")!)
        exerciseimages2.append(UIImage(named: "Spine Stretch2")!)
        exercisenames.append("3. Spine Stretch")
        reps.append("20 Reps")
        exerciseimages1.append(UIImage(named: "Kneeling Oblique Crunch1")!)
        exerciseimages2.append(UIImage(named: "Kneeling Oblique Crunch2")!)
        exercisenames.append("4. Kneeling Oblique Crunch")
        reps.append("15 Reps Per Side")
        exerciseimages1.append(UIImage(named: "Runner's Crunch1")!)
        exerciseimages2.append(UIImage(named: "Runner's Crunch2")!)
        exercisenames.append("1. Runner's Crunch")
        reps.append("15 Reps")
        exerciseimages1.append(UIImage(named: "Rolling Over1")!)
        exerciseimages2.append(UIImage(named: "Rolling Over2")!)
        exercisenames.append("2. Rolling Over")
        reps.append("20 Reps")
        exerciseimages1.append(UIImage(named: "The Dead Bug1")!)
        exerciseimages2.append(UIImage(named: "The Dead Bug2")!)
        exercisenames.append("3. The Dead Bug")
        reps.append("20 Reps")
        exerciseimages1.append(UIImage(named: "McGill Curl Up1")!)
        exerciseimages2.append(UIImage(named: "McGill Curl Up2")!)
        exercisenames.append("4. McGill Curl Up")
        reps.append("15 Reps")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        if exercisenames.count > 0 {
            
            return exercisenames.count
            
        } else {
            
            return 0
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Exercise", for: indexPath) as! ExerciseTableViewCell
        
        
        if exercisenames.count > 0 {
            
        cell.image1.image = exerciseimages2[indexPath.row]
        cell.image2.image = exerciseimages1[indexPath.row]
        cell.circuititle.text = circuittitles[indexPath.row]
        cell.circuitexercise.text = numberofexercises[indexPath.row]
        cell.exercisetitle.text = exercisenames[indexPath.row]
        cell.repstitle.text = reps[indexPath.row]
        cell.circuitminute.text = length[indexPath.row]
            
            if circuittitles[indexPath.row] == "-" {
                
                cell.circuitminute.alpha = 0
                cell.circuititle.alpha = 0
                cell.circuitexercise.alpha = 0
                cell.greenbackgorund.alpha = 0
                cell.bluelabel.alpha = 1
                
            } else {
                
                cell.bluelabel.alpha = 0
                cell.greenbackgorund.alpha = 1
                cell.circuitminute.alpha = 1
                cell.circuititle.alpha = 1
                cell.circuitexercise.alpha = 1
                
            }
            
            if circuittitles[indexPath.row] == "Circuit 2 & 4" {
                
                cell.greenbackgorund.backgroundColor  = mighty
                
            } else {
                
                cell.greenbackgorund.backgroundColor  = foam

            }
        } else {
            
            
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

let mighty = UIColor(red:0.90, green:0.33, blue:0.57, alpha:1.0)


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

class WorkoutViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBAction func tapBack(_ sender: Any) {
    }
    @IBAction func tapNext(_ sender: Any) {
    }
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var todaylabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        loaddictionaries()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loaddictionaries() {
        
        workoutdays.append("Day 1")
        workoutdays.append("Day 2")
        workoutdays.append("Day 3")
        workoutdays.append("Day 4")
        workoutdays.append("Day 5")
        workoutdays.append("Day 6")
        workoutdays.append("Day 7")
        workoutdays.append("Day 8")
        workoutdays.append("Day 9")
        workoutdays.append("Day 10")
        workoutdays.append("Day 11")
        workoutdays.append("Day 12")
        workoutdays.append("Day 13")
        workoutdays.append("Day 14")
        workoutdays.append("Day 15")
        workoutdays.append("Day 16")
        workoutdays.append("Day 17")
        workoutdays.append("Day 18")
        workoutdays.append("Day 19")
        workoutdays.append("Day 20")
        workoutdays.append("Day 21")
        workoutdays.append("Day 22")
        workoutdays.append("Day 23")
        workoutdays.append("Day 24")
        workoutdays.append("Day 25")
        workoutdays.append("Day 26")
        workoutdays.append("Day 27")
        workoutdays.append("Day 28")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Full Body")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Full Body")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Full Body")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Full Body")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Full Body")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Full Body")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Full Body")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Full Body")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Full Body")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Full Body")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Full Body")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Full Body")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Full Body")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Full Body")
        workoutnames.append("Rest")
        workoutnames.append("Legs")
        workoutnames.append("Arms & Abs")
        workoutnames.append("Full Body")
        workoutnames.append("Rest")
        workoutimages.append(UIImage(named: "Legs")!)
        workoutimages.append(UIImage(named: "Arms & Abs")!)
        workoutimages.append(UIImage(named: "Full Body")!)
        workoutimages.append(UIImage(named: "Rest")!)
        workoutimages.append(UIImage(named: "Legs")!)
        workoutimages.append(UIImage(named: "Arms & Abs")!)
        workoutimages.append(UIImage(named: "Full Body")!)
        workoutimages.append(UIImage(named: "Rest")!)
        workoutimages.append(UIImage(named: "Legs")!)
        workoutimages.append(UIImage(named: "Arms & Abs")!)
        workoutimages.append(UIImage(named: "Full Body")!)
        workoutimages.append(UIImage(named: "Rest")!)
        workoutimages.append(UIImage(named: "Legs")!)
        workoutimages.append(UIImage(named: "Arms & Abs")!)
        workoutimages.append(UIImage(named: "Full Body")!)
        workoutimages.append(UIImage(named: "Rest")!)
        workoutimages.append(UIImage(named: "Legs")!)
        workoutimages.append(UIImage(named: "Arms & Abs")!)
        workoutimages.append(UIImage(named: "Full Body")!)
        workoutimages.append(UIImage(named: "Rest")!)
        workoutimages.append(UIImage(named: "Legs")!)
        workoutimages.append(UIImage(named: "Arms & Abs")!)
        workoutimages.append(UIImage(named: "Full Body")!)
        workoutimages.append(UIImage(named: "Rest")!)
        workoutimages.append(UIImage(named: "Legs")!)
        workoutimages.append(UIImage(named: "Arms & Abs")!)
        workoutimages.append(UIImage(named: "Full Body")!)
        workoutimages.append(UIImage(named: "Rest")!)
        workoutimages.append(UIImage(named: "Legs")!)
        workoutimages.append(UIImage(named: "Arms & Abs")!)
        workoutimages.append(UIImage(named: "Full Body")!)
        workoutimages.append(UIImage(named: "Rest")!)
        workoutimages.append(UIImage(named: "Legs")!)
        workoutimages.append(UIImage(named: "Arms & Abs")!)
        workoutimages.append(UIImage(named: "Full Body")!)
        workoutimages.append(UIImage(named: "Rest")!)
        workoutimages.append(UIImage(named: "Legs")!)
        workoutimages.append(UIImage(named: "Arms & Abs")!)
        workoutimages.append(UIImage(named: "Full Body")!)
        workoutimages.append(UIImage(named: "Rest")!)
        workoutimages.append(UIImage(named: "Legs")!)
        workoutimages.append(UIImage(named: "Arms & Abs")!)
        workoutimages.append(UIImage(named: "Full Body")!)
        workoutimages.append(UIImage(named: "Rest")!)
        workoutimages.append(UIImage(named: "Legs")!)
        workoutimages.append(UIImage(named: "Arms & Abs")!)
        workoutimages.append(UIImage(named: "Full Body")!)
        workoutimages.append(UIImage(named: "Rest")!)
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
        self.performSegue(withIdentifier: "WorkoutToExercises", sender: self)

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Workout", for: indexPath) as! WorkoutCollectionViewCell
        
        cell.workoutimage.clipsToBounds = true
        cell.workoutimage.layer.cornerRadius   = 10.0

        if workoutdays.count > 0 {
            
            cell.daynumber.text = workoutdays[indexPath.row]
            cell.daytitle.text = workoutnames[indexPath.row]
            cell.workoutimage.image = workoutimages[indexPath.row]
            
        }
        return cell
        
    }
    
}

var selectedtitle = String()


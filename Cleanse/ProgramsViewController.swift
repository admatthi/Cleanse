//
//  ProgramsViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 9/19/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit

var programimages = [UIImage]()
var programnames = [String]()
var programduration = [String]()
var programprogress = [String]()
var programdescription = [String]()

class ProgramsViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        loaddictionary()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loaddictionary() {
        
        programnames.removeAll()
        programduration.removeAll()
        programprogress.removeAll()
        programdescription.removeAll()
        
        programnames.append("Flat Tummy")
        programnames.append("Thin Legs")
        programnames.append("Rounder Butt")
        programnames.append("Toned Arms And Chest")
        programnames.append("Young Face")
        programnames.append("Strong & Lean Back")
        programnames.append("Smaller Thighs & Waist")
        
        programduration.append("30 DAYS")
        programduration.append("30 DAYS")
        programduration.append("30 DAYS")
        programduration.append("30 DAYS")
        programduration.append("30 DAYS")
        programduration.append("30 DAYS")
        programduration.append("30 DAYS")

        programprogress.append("0/30")
        programprogress.append("0/30")
        programprogress.append("0/30")
        programprogress.append("0/30")
        programprogress.append("0/30")
        programprogress.append("0/30")
        programprogress.append("0/30")

        programdescription.append("Step-by-Step Exercises Guide To Achieve Lean Belly & Spend Only 15 Mins Daily")
        programdescription.append("Step-by-Step Exercises Guide To Squeeze Inner / Outer Thighs Only 15 Mins Daily")
        programdescription.append("Step-by-Step Exercises Guide To Attack Body Fat & Spend Only 15 Mins Daily")
        programdescription.append("Step-by-Step Exercises Guide To Avoid Flabby Arms And Chest And Spend Only 15 Mins Daily")
        programdescription.append("Make Your Face Younger Without Surgery")
        programdescription.append("Simple Exercises That Will Make Your Back Strong And Healthy In Just 28 Days")
        programdescription.append("Simple Exercises That Can Help You Tighten Inner Thighs")
        
        collectionView.reloadData()


    }
    
    func queryforlastcompleted() {
        
        ref?.child(uid).observeSingleEvent(of: .value, with: { (snapshot) in
            
            var value = snapshot.value as? NSDictionary
            
            if var activityvalue = value?["Progress"] as? String {
   
                self.collectionView.reloadData()
                
            } else {
                
                
                self.collectionView.reloadData()
                
            }
            
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
    
    var progressnumber = String()


    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        
        
        return programnames.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
        
        selectedprogram = programnames[indexPath.row]
        
        self.performSegue(withIdentifier: "ProgramToWorkout", sender: self)
      
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Programs", for: indexPath) as! ProgramsCollectionViewCell
        
        cell.workoutimage.clipsToBounds = true
        cell.workoutimage.layer.cornerRadius   = 10.0
        
        cell.backgroundColor = greyl
        
        if programduration.count > indexPath.row {
       
            cell.programname.text = programnames[indexPath.row]
            cell.descriptionlabel.text = programdescription[indexPath.row]
            cell.duration.text = programduration[indexPath.row]
            cell.progress.text = programprogress[indexPath.row]
            cell.workoutimage.image = UIImage(named: programnames[indexPath.row])
        }
        
        return cell
        
        
        
    }
    
}

var selectedprogram = String()


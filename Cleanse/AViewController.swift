//
//  AViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 8/7/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit

var ages = [String]()

class AViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var button1: UIButton!
    
    @IBOutlet weak var agelabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    func addagestopickerView() {
        
        ages.append("18")
        ages.append("19")
        ages.append("20")
        ages.append("21")
        ages.append("22")
        ages.append("23")
        ages.append("24")
        ages.append("25")
        ages.append("26")
        ages.append("27")
        ages.append("28")
        ages.append("29")
        ages.append("30")
        ages.append("31")
        ages.append("32")
        ages.append("33")
        ages.append("34")
        ages.append("35")
        ages.append("36")
        ages.append("37")
        ages.append("38")
        ages.append("39")
        ages.append("40")
        ages.append("41")
        ages.append("42")
        ages.append("43")
        ages.append("44")
        ages.append("45")
        ages.append("46")
        ages.append("47")
        ages.append("48")
        ages.append("49")
        ages.append("50")
        ages.append("51")
        
        pickerView.reloadAllComponents()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addagestopickerView()
        
        button1.alpha = 0
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if ages.count > 0 {
            
            return ages[row]
            
        } else {
            
            return "0"
            
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if ages.count > 0 {
            
            return ages.count
            
        } else {
            
            return 1
        }
    }
    
    var myage = Int()
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        agelabel.text = ages[row]
        myage = Int(ages[row])!
        button1.alpha = 1
        
    }
}

class SegueFromLeft: UIStoryboardSegue {
    override func perform() {
        let src = self.source
        let dst = self.destination
        
        src.view.superview?.insertSubview(dst.view, aboveSubview: src.view)
        dst.view.transform = CGAffineTransform(translationX: -src.view.frame.size.width, y: 0)
        
        UIView.animate(withDuration: 0.25,
                       delay: 0.0,
                       options: .curveEaseInOut,
                       animations: {
                        dst.view.transform = CGAffineTransform(translationX: 0, y: 0)
        },
                       completion: { finished in
                        src.present(dst, animated: false, completion: nil)
        }
        )
    }
}

class SegueFromRight: UIStoryboardSegue {
    override func perform() {
        let src = self.source
        let dst = self.destination
        
        src.view.superview?.insertSubview(dst.view, aboveSubview: src.view)
        dst.view.transform = CGAffineTransform(translationX: src.view.frame.size.width, y: 0)
        
        UIView.animate(withDuration: 0.25,
                       delay: 0.0,
                       options: .curveEaseInOut,
                       animations: {
                        dst.view.transform = CGAffineTransform(translationX: 0, y: 0)
        },
                       completion: { finished in
                        src.present(dst, animated: false, completion: nil)
        }
        )
    }
}

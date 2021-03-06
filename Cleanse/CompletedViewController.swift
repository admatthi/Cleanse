//
//  CompletedViewController.swift
//  Cleanse
//
//  Created by Alek Matthiessen on 9/17/18.
//  Copyright © 2018 AA Tech. All rights reserved.
//

import UIKit
import Cheers

class CompletedViewController: UIViewController {
    
    @IBOutlet weak var bamview: CheerView!
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var imageback: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        titlelabel.text = "\(selectedprogram) Day \(selectedday)!"
        
        // Configure
        bamview.config.particle = .confetti(allowedShapes: [Particle.ConfettiShape.triangle])
        
        bamview.config.colors = [foam, mighty]
        
        // Start
        bamview.start()
        
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

}

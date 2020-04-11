//
//  ExperienceViewController.swift
//  iOSLab2
//
//  Created by Vida Rashidi on 2020-04-08.
//  Copyright © 2020 Vida Rashidi. All rights reserved.
//

import UIKit

class ExperienceViewController: UIViewController {
    
    @IBOutlet weak var experienceImage: UIImageView!
    @IBOutlet weak var experienceDesc: UILabel!
    @IBOutlet weak var experienceDate: UILabel!
    
    override func viewDidLoad() {
          super.viewDidLoad()
        let experience: Experiences = DataHandler.instance.getSelectedExperience()!
        
        experienceImage.image = UIImage(named: "\(experience.image)")
        experienceDesc.text = experience.describtion
        experienceDate.text = experience.date
          
      }
}

//
//  Datahandler.swift
//  iOSLab2
//
//  Created by Vida Rashidi on 2020-04-08.
//  Copyright © 2020 Vida Rashidi. All rights reserved.
//

import Foundation

class DataHandler {
    
    static let instance = DataHandler()
    
    let experiences : [[Experiences]] =
        [[
            Experiences (id:1, image: "\(1)", describtion:"Work \(1)", date: "2015-2019"),
            Experiences (id:2,image: "\(2)", describtion: "Work \(2)", date: "2013-2013")],
         
         [Experiences (id:3,image:"\(3)", describtion: "Education \(1)",date: "2015-2017"),
         Experiences (id:4, image: "\(4)", describtion :"Education \(2)", date: "2018-..")
            
        ]]
    
 
    private var selectedExperienceId: Int = 1
    private var section = 0
    
    func getSelectedExperience() -> Experiences?{
        if let experience = experiences[section].first(where:{ $0.id == selectedExperienceId}){
            return experience
        }
        return nil
    }
    
    func setSelectedExperienceId(withIndex indexRow: Int, withIndex indexSection: Int) {
        selectedExperienceId = experiences[indexSection][indexRow].id
        section = indexSection
        
    }
    
}

//
//  dataHandlerVar.swift
//  iOSLab2
//
//  Created by Vida Rashidi on 2020-04-08.
//  Copyright © 2020 Vida Rashidi. All rights reserved.
//

import Foundation

class Experiences {
    let id: Int
    let image: String
    let describtion: String
    let date: String
    
    init(id: Int, image: String, describtion: String, date: String) {
        self.id = id
        self.image = image
        self.describtion = describtion
        self.date = date
    }
}

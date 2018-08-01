//
//  species.swift
//  Star Wars the Data Awakens
//
//  Created by Sean Donato on 7/31/18.
//  Copyright © 2018 Sean Donato. All rights reserved.
//

import Foundation
struct Species{
    
    var name: String
    var classification: String
    var designation: String
    var avgHeight: String
    var avgLifespan: String
    var eyeColors: String
    var hairColors: String
    var skinColors: String
    var language: String
    var homeworld: String
    
    init(dictionary: [String: Any]) {
        
        self.name = dictionary["name"] as? String ?? ""
        self.classification = dictionary["classification"] as? String ?? ""
        self.designation = dictionary["designation"] as? String ?? ""
        self.avgHeight = dictionary["average_eight"] as? String ?? ""
        self.avgLifespan = dictionary["average_lifespan"] as? String ?? ""
        self.hairColors = dictionary["hair_colors"] as? String ?? ""
        self.eyeColors = dictionary["eye_colors"] as? String ?? ""
        self.skinColors = dictionary["skin_colors"] as? String ?? ""
        self.language = dictionary["language"] as? String ?? ""
        self.homeworld = dictionary["homeworld"] as? String ?? ""

    }

}

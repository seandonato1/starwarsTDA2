//
//  person.swift
//  Star Wars the Data Awakens
//
//  Created by Sean Donato on 7/31/18.
//  Copyright © 2018 Sean Donato. All rights reserved.
//

import Foundation

struct Person{
    
    var name: String
    var birthYear: String
    var gender: String
    var eyeColor: String
    var height: String
    var mass: String
    var hairColor: String
    var skinColor: String
    var language: String
    var homeworld: String
    
    init(dictionary: [String: Any]) {
        
        self.name = dictionary["name"] as? String ?? ""
        self.birthYear = dictionary["birth_year"] as? String ?? ""
        self.gender = dictionary["gender"] as? String ?? ""
        self.height = dictionary["height"] as? String ?? ""
        self.mass = dictionary["mass"] as? String ?? ""
        self.hairColor = dictionary["hair_color"] as? String ?? ""
        self.eyeColor = dictionary["eye_color"] as? String ?? ""
        self.skinColor = dictionary["skin_color"] as? String ?? ""
        self.language = dictionary["language"] as? String ?? ""
        self.homeworld = dictionary["homeworld"] as? String ?? ""
        
    }

}

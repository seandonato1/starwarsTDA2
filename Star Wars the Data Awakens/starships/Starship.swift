//
//  starship.swift
//  Star Wars the Data Awakens
//
//  Created by Sean Donato on 7/31/18.
//  Copyright © 2018 Sean Donato. All rights reserved.
//

import Foundation

struct Starship : Codable{
    
    var name: String
    var model: String
    var starshipClass: String
    var manufacturer: String
    var costInCredits: String
    var length: String
    var crew: String
    var passengers: String
    var maxAtmospheringSpeed: String
    var hyperdriveRating: String
    var MGLT: String
    var cargoCapacity: String
    


    //initialize properties
    init(dictionary: [String: Any]) {
        
        self.name = dictionary["name"] as? String ?? ""
        self.model = dictionary["model"] as? String ?? ""
        self.starshipClass = dictionary["starship_class"] as? String ?? ""
        self.manufacturer = dictionary["manufacturer"] as? String ?? ""
        self.costInCredits = dictionary["cost_in_credits"] as? String ?? ""
        self.length = dictionary["length"] as? String ?? ""
        self.passengers = dictionary["passengers"] as? String ?? ""
        self.maxAtmospheringSpeed = dictionary["max_atmosphering_speed"] as? String ?? ""
        self.hyperdriveRating = dictionary["hyperdrive_rating"] as? String ?? ""
        self.MGLT = dictionary["MGLT"] as? String ?? ""
        self.crew = dictionary["crew"] as? String ?? ""
        self.cargoCapacity = dictionary["cargo_capacity"] as? String ?? ""
    }
    
}

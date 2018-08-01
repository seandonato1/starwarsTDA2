//
//  vehicle.swift
//  Star Wars the Data Awakens
//
//  Created by Sean Donato on 7/31/18.
//  Copyright © 2018 Sean Donato. All rights reserved.
//

import Foundation

struct Vehicle{
    
    var name: String
    var model: String
    var vehicleClass: String
    var manufacturer: String
    var costInCredits: String
    var length: String
    var crew: String
    var passengers: String
    var maxAtmospheringSpeed: String
    var cargoCapacity: String
    var consumables: String

    init(dictionary: [String: Any]) {
        
        self.name = dictionary["name"] as? String ?? ""
        self.model = dictionary["model"] as? String ?? ""
        self.vehicleClass = dictionary["vehicle_class"] as? String ?? ""
        self.manufacturer = dictionary["manufacturer"] as? String ?? ""
        self.costInCredits = dictionary["cost_in_credits"] as? String ?? ""
        self.length = dictionary["length"] as? String ?? ""
        self.passengers = dictionary["passengers"] as? String ?? ""
        self.maxAtmospheringSpeed = dictionary["max_atmosphering_speed"] as? String ?? ""
        self.consumables = dictionary["consumables"] as? String ?? ""
        self.crew = dictionary["crew"] as? String ?? ""
        self.cargoCapacity = dictionary["cargo_capacity"] as? String ?? ""
    }
    
}

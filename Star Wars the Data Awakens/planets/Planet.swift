//
//  planet.swift
//  Star Wars the Data Awakens
//
//  Created by Sean Donato on 7/31/18.
//  Copyright © 2018 Sean Donato. All rights reserved.
//

import Foundation
struct Planet{
    
    var name: String
    var diameter: String
    var orbitalPeriod: String
    var gravity: String
    var population: String
    var climate: String
    var terrain: String
    var surfaceWater: String
    
    init(dictionary: [String: Any]) {
        
        self.name = dictionary["name"] as? String ?? ""
        self.diameter = dictionary["diameter"] as? String ?? ""
        self.orbitalPeriod = dictionary["orbital_period"] as? String ?? ""
        self.gravity = dictionary["gravity"] as? String ?? ""
        self.population = dictionary["population"] as? String ?? ""
        self.climate = dictionary["climate"] as? String ?? ""
        self.terrain = dictionary["terrain"] as? String ?? ""
        self.surfaceWater = dictionary["surfaceWater"] as? String ?? ""
    }


}

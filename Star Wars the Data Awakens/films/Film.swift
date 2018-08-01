//
//  film.swift
//  Star Wars the Data Awakens
//
//  Created by Sean Donato on 7/31/18.
//  Copyright © 2018 Sean Donato. All rights reserved.
//

import Foundation

struct Film{
    
    var title: String
    var director: String
    var characters: String
    var episode: Int
    
    init(dictionary: [String: Any]) {
        
        self.title = dictionary["title"] as? String ?? ""
        self.director = dictionary["director"] as? String ?? ""
        self.characters = dictionary["characters"] as? String ?? ""
        self.episode = (dictionary["episode_id"] as? Int)! 
        
    }
    
}

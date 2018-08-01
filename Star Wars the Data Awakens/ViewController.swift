//
//  ViewController.swift
//  Star Wars the Data Awakens
//
//  Created by Sean Donato on 7/31/18.
//  Copyright © 2018 Sean Donato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var peopleButton: UIButton!
    @IBOutlet weak var vehiclesButton: UIButton!
    @IBOutlet weak var starshipsButton: UIButton!
    @IBOutlet weak var planetsButton: UIButton!
    @IBOutlet weak var speciesButton: UIButton!
    @IBOutlet weak var filmsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func transitToTableView(_ sender: UIButton) {
        
        var type = ""
        var typeForLabel = ""
        var url = ""
        switch sender.tag {
        case 0:
            type = "film"
            url = Constants.filmsURL
            typeForLabel = "Films"
        case 1:
            type = "person"
            url = Constants.peopleURL
            typeForLabel = "People"

        case 2:
            type = "species"
            url = Constants.speciesURL
            typeForLabel = "Species"

        case 3:
            type = "planet"
            url = Constants.planetsURL
            typeForLabel = "Planets"

        case 4:
            type = "starship"
            url = Constants.starshipsURL
            typeForLabel = "Starships"

        case 5:
            type = "vehicle"
            url = Constants.vehiclesURL
            typeForLabel = "Vehicles"

 
        default:
            return
        }
            //initialize school detail view controller
            let tableVC = SWDataTableViewController.init(url: url, type: type, labelType: typeForLabel)
            //push detail view controller onto the navigation controller
            self.navigationController?.pushViewController(tableVC, animated: true)
            
            
        }
    
      
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


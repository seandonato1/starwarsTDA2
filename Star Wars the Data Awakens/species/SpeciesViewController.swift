//
//  speciesViewController.swift
//  Star Wars the Data Awakens
//
//  Created by Sean Donato on 7/31/18.
//  Copyright © 2018 Sean Donato. All rights reserved.
//

import UIKit

class SpeciesViewController: UIViewController {

    let speciesData:Species
    @IBOutlet weak var speciesClassificationLabel: UILabel!
    
    @IBOutlet weak var speciesDesignationLabel: UILabel!
    @IBOutlet weak var speciesNameLabel: UILabel!
    
    //initalize all the properties of MyViewController here, before calling super class designated initalizer
    init(species:Species) {
        
        //initalize all the properties of MyViewController here, before calling super class designated initalizer
        
        speciesData = species
        super.init(nibName: "SpeciesViewController", bundle: nil)//Designated initializer, pass nil, for both params if not using NIB
        //Now you have access to self
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
        
    }

    override func viewDidLoad() {
        
        super.viewDidLoad()
        

        speciesNameLabel.text = speciesData.name
        speciesDesignationLabel.text = "Designation: " + speciesData.designation
        speciesClassificationLabel.text = "Classification: " + speciesData.classification
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

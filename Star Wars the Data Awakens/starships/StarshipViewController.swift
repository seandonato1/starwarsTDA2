//
//  starshipViewController.swift
//  Star Wars the Data Awakens
//
//  Created by Sean Donato on 7/31/18.
//  Copyright © 2018 Sean Donato. All rights reserved.
//

import UIKit

class StarshipViewController: UIViewController {

    let starshipData:Starship
    @IBOutlet weak var starshipNameLabel: UILabel!
    @IBOutlet weak var starshipModelLabel: UILabel!
    @IBOutlet weak var starshipClassLabel: UILabel!
    
    init(starship:Starship) {
        
        //initalize all the properties of MyViewController here, before calling super class designated initalizer
        
        starshipData = starship
        
        super.init(nibName: "StarshipViewController", bundle: nil)//Designated initializer, pass nil, for both params if not using NIB
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
        starshipNameLabel.text = starshipData.name
        starshipClassLabel.text = "Starship class: " + starshipData.starshipClass
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

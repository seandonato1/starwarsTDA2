//
//  personViewController.swift
//  Star Wars the Data Awakens
//
//  Created by Sean Donato on 7/31/18.
//  Copyright © 2018 Sean Donato. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {

    let personData:Person
    @IBOutlet weak var nameLabelP: UILabel!
    
    @IBOutlet weak var genderLabel: UILabel!
    init(person:Person) {
        
        //initalize all the properties of MyViewController here, before calling super class designated initalizer
        
        personData = person

        
        super.init(nibName: "PersonViewController", bundle: nil)//Designated initializer, pass nil, for both params if not using NIB
        //Now you have access to self
        
        
        
    }
    
    @IBOutlet weak var personBirthYearLabel: UILabel!
    @IBOutlet weak var personHomePlanetLabel: UILabel!
    
    
    //This method needs to be implemented as UIViewController conform to NSCoding protocol
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false

    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        nameLabelP.text = personData.name
        personBirthYearLabel.text = "Born: " + personData.birthYear
        genderLabel.text = "Gender: " + personData.gender
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

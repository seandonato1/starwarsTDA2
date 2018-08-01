//
//  filmViewController.swift
//  Star Wars the Data Awakens
//
//  Created by Sean Donato on 7/31/18.
//  Copyright © 2018 Sean Donato. All rights reserved.
//

import UIKit

class FilmViewController: UIViewController {
    
    let filmData:Film

    @IBOutlet weak var filmEpisodeLabel: UILabel!
    @IBOutlet weak var filmNameLabel: UILabel!
    @IBOutlet weak var filmDirectorLabel: UILabel!
    init(film:Film) {
        
        //initalize all the properties of MyViewController here, before calling super class designated initalizer
        
        filmData = film
        
        super.init(nibName: "FilmViewController", bundle: nil)//Designated initializer, pass nil, for both params if not using NIB
        //Now you have access to self
        
        
        
    }
    
    
    //This method needs to be implemented as UIViewController conform to NSCoding protocol
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        filmNameLabel.text = filmData.title
        filmEpisodeLabel.text = "Episode " +  filmData.episode.description
        filmDirectorLabel.text = "Director: " + filmData.director
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

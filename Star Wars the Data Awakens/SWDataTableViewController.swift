//
//  SWDataTableViewController.swift
//  Star Wars the Data Awakens
//
//  Created by Sean Donato on 8/1/18.
//  Copyright © 2018 Sean Donato. All rights reserved.
//

import UIKit
import Alamofire

class SWDataTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var typeLabel: UILabel!
    
    @IBOutlet weak var tableViewSW: UITableView!
    
    let urlForTable: String
    let typeOfObject: String
    var nextURL: String
    var objectArray: Array<Any>
    var labelTypeString: String
    
    init(url:String,type:String,labelType:String) {
        
        //initalize all the properties of MyViewController here, before calling super class designated initalizer
        
        urlForTable = url
        typeOfObject = type
        nextURL = url
        objectArray = []
        labelTypeString = labelType
        super.init(nibName: "SWDataTableViewController", bundle: nil)//Designated initializer, pass nil, for both params if not using NIB
        //Now you have access to self
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return objectArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:UITableViewCell = UITableViewCell()
        
        var name:String = ""
        if(typeOfObject == "starship"){
            
            let starship:Starship = objectArray[indexPath.row] as! Starship
            name = starship.name
            
        }else if(typeOfObject == "vehicle"){
            
            let vehicle:Vehicle = objectArray[indexPath.row] as! Vehicle
            name = vehicle.name
            
        }else if(typeOfObject == "planet"){
            
            let planet:Planet = objectArray[indexPath.row] as! Planet
            name = planet.name
            
        }else if(typeOfObject == "species"){
            
            let species:Species = objectArray[indexPath.row] as! Species
            name = species.name
            
        }else if(typeOfObject == "person"){
            
            let person:Person = objectArray[indexPath.row] as! Person
            name = person.name
            
        }else if(typeOfObject == "film"){
            
            let film:Film = objectArray[indexPath.row] as! Film
            name = film.title
        }


        cell.textLabel?.text = name
        
        if indexPath.row == objectArray.count - 1 { // last cell
            
            if(nextURL != urlForTable && nextURL != ""){
                
                self.getObjectData(url: nextURL)
                
            }
            
        }
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if(typeOfObject == "starship"){
            
            let starship:Starship = objectArray[indexPath.row] as! Starship
            
            //initialize  detail view controller
            let starshipVC = StarshipViewController.init(starship: starship)
            
            //push detail view controller onto the navigation controller
            self.navigationController?.pushViewController(starshipVC, animated: true)
            
        }else if(typeOfObject == "vehicle"){
            
            let vehicle:Vehicle = objectArray[indexPath.row] as! Vehicle
            
            
            let vehicleVC:VehicleViewController = VehicleViewController.init(vehicle: vehicle)
            self.navigationController?.pushViewController(vehicleVC, animated: true)

            
        }else if(typeOfObject == "planet"){
            
            let planet:Planet = objectArray[indexPath.row] as! Planet
            
            let planetVC:PlanetViewController = PlanetViewController.init(planet: planet)
            self.navigationController?.pushViewController(planetVC, animated: true)

        }else if(typeOfObject == "species"){
            
            let species:Species = objectArray[indexPath.row] as! Species
            
            let speciesVC:SpeciesViewController = SpeciesViewController.init(species: species)
            self.navigationController?.pushViewController(speciesVC, animated: true)

        }else if(typeOfObject == "person"){
            
            let person:Person = objectArray[indexPath.row] as! Person
            let personVC:PersonViewController = PersonViewController.init(person: person)
            self.navigationController?.pushViewController(personVC, animated: true)

        }else if(typeOfObject == "film"){
            
            let film:Film = objectArray[indexPath.row] as! Film
            
            let filmVC:FilmViewController = FilmViewController.init(film: film)
            self.navigationController?.pushViewController(filmVC, animated: true)
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.barTintColor = UIColor.black
        self.getObjectData(url: urlForTable)
        typeLabel.text = labelTypeString
        tableViewSW.delegate = self
        tableViewSW.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getObjectData(url: String){
        
        Alamofire.request(url,method: .get,encoding:URLEncoding.queryString).validate(statusCode:200..<300).responseJSON { response in
            
            switch response.result {
                
            case .success:
                
                guard let data = response.result.value else{return}
                
                if let dict = data as?  Dictionary<String, Any>
                {
                    if (dict["next"] as? String) != nil{
                        
                       
                            
                        self.nextURL = dict["next"] as! String
                        

                    }else{
                        self.nextURL = ""
                        
                    }
                    if let results:Array = dict["results"] as? [Dictionary<String, Any>] {
                        
                        
                        var i = 0
                        while i < results.count {
                            
                            if(self.typeOfObject == "starship"){
                                
                                let dict = results[i]
                                
                                let starship = Starship(dictionary: dict)
                                
                                self.objectArray.append(starship)
                                
                                i += 1

                            }else if(self.typeOfObject == "vehicle"){
                                
                                let dict = results[i]
                                
                                let vehicle = Vehicle(dictionary: dict)
                                
                                self.objectArray.append(vehicle)
                                
                                i += 1
                                
                            }else if(self.typeOfObject == "planet"){
                                
                                let dict = results[i]
                                
                                let planet = Planet(dictionary: dict)
                                
                                self.objectArray.append(planet)
                                
                                i += 1
                                
                            }else if(self.typeOfObject == "person"){
                                
                                let dict = results[i]
                                
                                let person = Person(dictionary: dict)
                                
                                self.objectArray.append(person)
                                
                                i += 1
                                
                            }else if(self.typeOfObject == "film"){
                                
                                let dict = results[i]
                                
                                let film = Film(dictionary: dict)
                                
                                self.objectArray.append(film)
                                
                                i += 1
                                
                            }else if(self.typeOfObject == "species"){
                                
                                let dict = results[i]
                                
                                let film = Species(dictionary: dict)
                                
                                self.objectArray.append(film)
                                
                                i += 1
                                
                            }


                            
                            
                        }

                    }

                    self.tableViewSW.reloadData()
                }
            
            case .failure(let error):
                
                let alertController = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
                //
                let action1 = UIAlertAction(title: "Ok", style: .default) { (action:UIAlertAction) in
                    print("");
                }
                
                alertController.addAction(action1)
                self.present(alertController, animated: true, completion: nil)
                print(error.localizedDescription)
            }
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true

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

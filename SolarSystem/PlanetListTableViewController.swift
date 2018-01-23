//
//  PlanetListTableViewController.swift
//  SolarSystem
//
//  Created by Jade Thomason on 1/23/18.
//  Copyright © 2018 DevMountain. All rights reserved.
//

import UIKit

class PlanetListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return PlanetController.planets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)

        let planet = PlanetController.planets[indexPath.row]
        cell.textLabel?.text = planet.name
        cell.detailTextLabel?.text = String("This planet is numero \(indexPath.row + 1) from the Sun")
        cell.imageView?.image = UIImage(named: planet.imageName)

        return cell
    }
    

    

    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPlanetDetailVC" {
            guard let planetDetailVC = segue.destination as? PlanetDetailViewController else { return }
            if let indexPath = tableView.indexPathForSelectedRow {
                let planet = PlanetController.planets[indexPath.row]
                planetDetailVC.planet = planet
            }
        }
        
        
    }
    

}

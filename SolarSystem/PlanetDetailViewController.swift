//
//  PlanetDetailViewController.swift
//  SolarSystem
//
//  Created by Jade Thomason on 1/23/18.
//  Copyright © 2018 DevMountain. All rights reserved.
//

import UIKit

class PlanetDetailViewController: UIViewController {
    
    @IBOutlet weak var planetImage: UIImageView!
    @IBOutlet weak var planetDiameter: UILabel!
    @IBOutlet weak var planetDaylength: UILabel!
    @IBOutlet weak var planetDistance: UILabel!
    
    func updateViews() {
        guard let planet = planet else { return }
        self.planetImage.image = UIImage(named: planet.imageName)
        self.planetDiameter.text = String("Diameter: \(planet.diameter) km")
        self.planetDaylength.text = String("Daylength: \(planet.dayLength) hours")
        self.planetDistance.text = String("Distance: \(planet.millionKMsFromSun) km from Sun")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        title = planet?.name
    }

    var planet: Planet?

}

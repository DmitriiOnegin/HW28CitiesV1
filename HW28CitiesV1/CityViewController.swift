//
//  CityViewController.swift
//  HW28CitiesV1
//
//  Created by Johnny Boshechka on 1/7/22.
//

import Foundation
import UIKit

class CityViewController: UIViewController {
    
    let currentCity = City.getCity()
    let sights = Sight.getSights()
    let number: Int = 0
    
    @IBOutlet weak var currentCityView: UIImageView!
    @IBOutlet weak var populationLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var foundedDateLabel: UILabel!
    @IBOutlet weak var sightsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCity()
    }
    
    private func setupCity() {
        navigationItem.title = currentCity.name
        currentCityView.image = UIImage(named: currentCity.image)
        populationLabel.text = String(currentCity.population)
        areaLabel.text = String(currentCity.area)
        foundedDateLabel.text = String(currentCity.foundedDate)
    }
}

extension CityViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        sights.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let sight = sights[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.image = UIImage(named: sight.image)
        content.text = sight.name
        cell.contentConfiguration = content
        return cell
        
    }
}

//
//  CityViewController.swift
//  HW28CitiesV1
//
//  Created by Johnny Boshechka on 1/7/22.
//

import UIKit

class CityViewController: UIViewController {
    
    @IBOutlet weak var currentCityView: UIImageView!
    @IBOutlet weak var populationLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var foundedDateLabel: UILabel!
    @IBOutlet weak var sightsTableView: UITableView!
    
    var city: City!
    var categirys: [Categora] = []
    private var sortedPlace: [Place] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sightsTableView.rowHeight = 80
        getSortedPlace()
        setupCity()
    }
}

extension CityViewController {
    
    private func getSortedPlace() {
        for categiry in categirys {
            for place in city.places {
                if categiry == place.category {
                    sortedPlace.append(place)
                }
            }
        }
    }
    
    private func setupCity() {
        navigationItem.title = city.usersCity
        currentCityView.image = UIImage(named: city.usersCity)
        populationLabel.text = "Численность населения: \(String(city.population))"
        areaLabel.text = "Площадь города: \(String(city.area))"
        foundedDateLabel.text = "Основан в : \(String(city.foundedDate))"
    }
}

extension CityViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        categirys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "place", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        
        content.text = sortedPlace[indexPath.row].name
        content.image = UIImage(named: sortedPlace[indexPath.row].name)
        content.imageProperties.maximumSize.width = 80
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let place = sortedPlace[indexPath.row]
        print(place)
        performSegue(withIdentifier: "placeSegue", sender: place)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let placeVC = segue.destination as? PlaceViewController else {return  }
        
        placeVC.place = sender as? Place
    }
    
}

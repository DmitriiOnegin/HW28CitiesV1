//
//  CityViewController.swift
//  HW28CitiesV1
//
//  Created by Dmitrii Onegin on 06.01.2022.
//

import UIKit

protocol TabBarViewControllerDelegate {
    func setNewValues(for categirys: [Categora])
}

class CityViewController: UIViewController {
    
    var city: City!
   var categirys = [Categora]()
    var delegate: SettingsViewControllerDelegate!
    
    //private var categirys: [Categora] = [.theatre, .sport, .architecture, .food, .park]

    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        delegate.setNewValues(for: categirys)
//        print(self.categirys)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   
    

}

extension CityViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // delegate.setNewValues(for: categirys)
        categirys.count
       // city.places.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath)

        var content = cell.defaultContentConfiguration()
        
        content.text = city.places[indexPath.row].name
        cell.contentConfiguration = content

        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        
     }
    
    
}

extension CityViewController: TabBarViewControllerDelegate {
    func setNewValues(for categirys: [Categora]) {

        self.categirys = categirys

    }
}

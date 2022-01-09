//
//  PlaceViewController.swift
//  HW28CitiesV1
//
//  Created by user on 08.01.2022.
//

import UIKit

class PlaceViewController: UIViewController {
    
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var street: UILabel!
    @IBOutlet weak var discription: UILabel!
    
    var place: Place!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
}
extension PlaceViewController {
    
    private func setupViewControllers() {
        imageLabel.image = UIImage(named: place.image)
        nameLabel.text = place.name
        rating.text = "рейтинг " + place.rating
        category.text = "Категория " + place.category.rawValue
        city.text = "город " + place.city
        street.text = place.address
        discription.text = place.discription
    }
}

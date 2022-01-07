//
//  TabBarViewController.swift
//  HW28CitiesV1
//
//  Created by Dmitrii Onegin on 06.01.2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setNewValues(for categirys: [Categora])
}

class TabBarViewController: UITabBarController {
    
    let citys = City.returnCityesArray()
    
    private var categirys: [Categora] = [.theatre, .sport, .architecture, .food, .park]

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        
    }
    
}

extension TabBarViewController {
    private func setupViewControllers() {
        guard let settingsNVC = viewControllers?.last as? UINavigationController else { return }
        guard let settingsVC = settingsNVC.topViewController as? SettingsViewController else { return }
        settingsVC.delegate = self
        
        guard let startNVC = viewControllers?.first as? UINavigationController else { return }
        guard let startVC = startNVC.topViewController as? StartViewController else { return }
        
        startVC.citys = citys

    }
}

extension TabBarViewController: SettingsViewControllerDelegate {
    func setNewValues(for categirys: [Categora]) {
        
        self.categirys = categirys
    }
}

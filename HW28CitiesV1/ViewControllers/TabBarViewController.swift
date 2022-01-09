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
protocol StartViewControllerDelegate {
    func getNewValues() -> [Categora]
}

class TabBarViewController: UITabBarController {
    
    private let citys = City.returnCityesArray()
    private var categirys: [Categora] = [.theatre, .sport, .architecture, .food, .park] {
        didSet {
            print(self.categirys)
            guard let startNVC = viewControllers?.first as? UINavigationController else { return }
            guard let startVC = startNVC.topViewController as? StartViewController else { return }
            
            startVC.citys = citys
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        setupTabBarController()
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
        startVC.delegate = self
    }
    
    private func setupTabBarController() {
        viewControllers?.first?.tabBarItem.title = NSLocalizedString("Home", comment: "")
        viewControllers?.first?.tabBarItem.image = UIImage(systemName: "house")
        viewControllers?.last?.tabBarItem.title = NSLocalizedString("Settings", comment: "")
        viewControllers?.last?.tabBarItem.image = UIImage(systemName: "gearshape")
    }
}

extension TabBarViewController: SettingsViewControllerDelegate {
    func setNewValues(for categirys: [Categora]) {
        self.categirys = categirys
    }
}

extension TabBarViewController: StartViewControllerDelegate {
    func getNewValues() -> [Categora] {
        categirys
    }
}

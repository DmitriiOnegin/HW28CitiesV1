//
//  TabBarViewController.swift
//  HW28CitiesV1
//
//  Created by Dmitrii Onegin on 06.01.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let citys = City.returnCityesArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
}

extension TabBarViewController {
    private func setupViewControllers() {
//        guard let settingsNVC = viewControllers?.first as? UINavigationController else { return }
        guard let startNVC = viewControllers?.first as? UINavigationController else { return }
        guard let startVC = startNVC.topViewController as? StartViewController else { return }
        
        startVC.citys = citys

    }
}

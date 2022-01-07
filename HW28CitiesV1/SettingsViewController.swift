//
//  ViewController.swift
//  HomeWorkWithTeam
//
//  Created by Дмитрий Бессонов on 04.01.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    var delegate: SettingsViewControllerDelegate!
    private var categirys: [Categora] = [.theatre, .sport, .architecture]
    
    
    @IBOutlet weak var parksSwitch: UISwitch!
    @IBOutlet weak var foodSwitch: UISwitch!
    @IBOutlet weak var architectureSwitch: UISwitch!
    @IBOutlet weak var sportSwitch: UISwitch!
    @IBOutlet weak var theatersSwitch: UISwitch!
    @IBOutlet weak var theatersLabel: UILabel!
    @IBOutlet weak var sportLabel: UILabel!
    @IBOutlet weak var parksLabel: UILabel!
    @IBOutlet weak var architectureLabel: UILabel!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var testLabel: UILabel!
    

    var sights = ["Театры", "Спорт", "Архитектура", "Еда", "Парки"]
    // тут делаем экземпляр структуры из модели
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel.text = sights.joined(separator: ", ")
    }

    // по умолчанию все свичи включены и все достопримечательности открыты
        // Когда к нам попадает массив - очищаем его, после этого, при включении свича, в массив добавляется категория

    @IBAction func switchAction() {
        sights.removeAll()
        
        
//        switch UISwitch().isOn {
//        case theatersSwitch.isOn:
//            guard let theaters = theatersLabel.text else { return }
//            sights.append(theaters)
//        case sportSwitch.isOn:
//            guard let sport = sportLabel.text else { return }
//            sights.append(sport)
//
//        default:
//            break
//        }
        if theatersSwitch.isOn {
            guard let theaters = theatersLabel.text else { return }
            sights.append(theaters)
        }
        if sportSwitch.isOn {
            guard let sport = sportLabel.text else { return }
            sights.append(sport)
        }
        if architectureSwitch.isOn {
            guard let architecture = architectureLabel.text else { return }
            sights.append(architecture)
        }
        if foodSwitch.isOn {
            guard let food = foodLabel.text else { return }
            sights.append(food)
        }
        if parksSwitch.isOn {
            guard let parks = parksLabel.text else { return }
            sights.append(parks)
        }
        testLabel.text = sights.joined(separator: ", ")
        }
    }
    
 
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let tabBarController = segue.destination as? UITabBarController else {return}
//        guard let viewControllers = tabBarController.viewControllers else { return }
//
//        for viewController in viewControllers {
//    if let _ = viewController as? _{
//       code
//    } else if let navigationVC = viewController as? UINavigationController {
//        let _VC = navigationVC.topViewController as! _
//        code


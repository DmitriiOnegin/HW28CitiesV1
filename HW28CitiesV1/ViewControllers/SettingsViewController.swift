//
//  ViewController.swift
//  HomeWorkWithTeam
//
//  Created by Дмитрий Бессонов on 04.01.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    
    
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

    var delegate: SettingsViewControllerDelegate!
    private var categirys: [Categora] = [.theatre, .sport, .architecture, .food, .park]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }

    
    @IBAction func switchAction() {
        
        categirys.removeAll()
        
        if theatersSwitch.isOn {
            categirys.append(.theatre)
        }
        if sportSwitch.isOn {
            categirys.append(.sport)
            
        }
        if architectureSwitch.isOn {
            categirys.append(.architecture)
            
        }
        if foodSwitch.isOn {
            categirys.append(.food)
            
        }
        if parksSwitch.isOn {
            categirys.append(.park)
            
        }
        
        delegate.setNewValues(for: categirys)
    }
}



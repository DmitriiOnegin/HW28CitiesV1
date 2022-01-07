//
//  SettingsViewController.swift
//  HW28CitiesV1
//
//  Created by Dmitrii Onegin on 06.01.2022.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var delegate: SettingsViewControllerDelegate!
    private var categirys: [Categora] = [.theatre, .sport, .architecture]

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate.setNewValues(for: categirys)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

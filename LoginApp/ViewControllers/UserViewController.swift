//
//  UserViewController.swift
//  LoginApp
//
//  Created by Vlad Ryabtsev on 24.12.2021.
//

import UIKit

class UserViewController: UIViewController {
    
    @IBOutlet var foulNameOutlet: UILabel!
    @IBOutlet var descriptionOutlet: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foulNameOutlet.text = user.person.foulName
        descriptionOutlet.text = user.person.description
        navigationItem.title = user.person.name + " " + user.person.surname
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let theBeatlesVC = segue.destination as? TheBeatlesViewController else { return }
        theBeatlesVC.user = user
    }
}

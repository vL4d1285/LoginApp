//
//  TheBeatlesViewController.swift
//  LoginApp
//
//  Created by Vlad Ryabtsev on 25.12.2021.
//

import UIKit

class TheBeatlesViewController: UIViewController {
    
    @IBOutlet var descriptionOutlet: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descriptionOutlet.text = user.person.theBeatlesDescription
    }
    
}

//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Vlad Ryabtsev on 23.12.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var labelOutlet: UILabel!
        
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOutlet.text = "Welcome, \(userName)!"
    }
    
}

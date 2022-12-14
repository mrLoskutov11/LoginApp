//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Антон Лоскутов on 01.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLableOutlet: UILabel!
    
    var user: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLableOutlet.text = "Welcome, \(user ?? " ")!"
    }
    
    @IBAction func logOutButton() {
        dismiss(animated: true)
    }
}

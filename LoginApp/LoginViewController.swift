//
//  ViewController.swift
//  LoginApp
//
//  Created by Антон Лоскутов on 01.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    @IBOutlet var logInButton: UIButton!
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC =  segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeValue = userName.text
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue ) {
        userName.text = nil
        password.text = nil
    }
    
    @IBAction func alertUserName() {
        let alert = UIAlertController(title: "User Name", message: "1111", preferredStyle: .alert)
        let okBtn = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okBtn)
        present(alert, animated: true)
    }
    @IBAction func alertPassword() {
        let alert = UIAlertController(title: "Password", message: "1111", preferredStyle: .alert)
        let okBtn = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okBtn)
        present(alert, animated: true)
    }
    
    
}

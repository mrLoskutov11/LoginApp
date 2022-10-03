//
//  ViewController.swift
//  LoginApp
//
//  Created by Антон Лоскутов on 01.10.2022.
//


import UIKit

class ViewController: UIViewController {

    let username = "1111"
    let password = "1111"
    
    @IBOutlet var usernameOutlet: UITextField!
    @IBOutlet var passwordOutlet: UITextField!
 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC =  segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.welcomeValue = usernameOutlet.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
        super .touchesBegan(touches, with: event)
    }
    
    @IBAction func logInTest() {
        if usernameOutlet.text == username && passwordOutlet.text == password {
            viewDidLoad()
        } else {
            allertLogIn()
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue ) {
        usernameOutlet.text = nil
        passwordOutlet.text = nil
    }
    
    @IBAction func alertUserName() {
        let alert = UIAlertController(
            title: "Try this name",
            message: "You name \(username)",
            preferredStyle: .alert
        )
        let okBtn = UIAlertAction(
            title: "OK",
            style: .default
        )
        alert.addAction(okBtn)
        present(alert, animated: true)
    }
    @IBAction func alertPassword() {
        let alert = UIAlertController(
            title: "Try this password",
            message: "You password \(password)",
            preferredStyle: .alert
        )
        let okBtn = UIAlertAction(
            title: "OK",
            style: .default)
        alert.addAction(okBtn)
        present(alert, animated: true)
    }
    
    private func allertLogIn() {
        let alert = UIAlertController(
            title: "Error",
            message: "Username or password entered incorrectly",
            preferredStyle: .alert
        )
        let okBtn = UIAlertAction(
            title: "OK",
            style: .default
        )
        alert.addAction(okBtn)
        present(alert, animated: true)
        passwordOutlet.text = nil
    }
}

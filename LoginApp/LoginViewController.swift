//
//  ViewController.swift
//  LoginApp
//
//  Created by Антон Лоскутов on 01.10.2022.
//


import UIKit

class ViewController: UIViewController {
    
    private let username = "1111"
    private let password = "1111"
    
    @IBOutlet var usernameOutlet: UITextField!
    @IBOutlet var passwordOutlet: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC =  segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.user = username
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func logInTest() {
        guard usernameOutlet.text == username && passwordOutlet.text == password else {
            showAllert(
                title: "Error",
                message: "Username or password entered incorrectly",
                textField: passwordOutlet
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAllert(title: "oops", message: "You name is \(username)" )
        : showAllert(title: "oops", message: "You password is \(password)")
    }
    @IBAction func unwind(for segue: UIStoryboardSegue ) {
        usernameOutlet.text = nil
        passwordOutlet.text = nil
    }
    
    private func showAllert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

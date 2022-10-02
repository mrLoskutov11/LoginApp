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
        guard let welcomeVC =  segue.destination as? WelcomeViewController else {
            return
        }
        welcomeVC.welcomeValue = userName.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil {
            view.endEditing(true)
        }
        super .touchesBegan(touches, with: event)
    }
    
    @IBAction func logInTest() {
        if userName.text == "1111" && password.text == "1111" {
            viewDidLoad()
        } else {
            allertLogIn()
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue ) {
        userName.text = nil
        password.text = nil
    }
    
    @IBAction func alertUserName() {
        let alert = UIAlertController(
            title: "error 🥲",
            message: "You name 1111",
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
            title: "error 🥲",
            message: "You password 1111",
            preferredStyle: .alert
        )
        let okBtn = UIAlertAction(title: "OK", style: .default)
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
        password.text = nil
    }
    
    
}

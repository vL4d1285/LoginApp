//
//  ViewController.swift
//  LoginApp
//
//  Created by Vlad Ryabtsev on 22.12.2021.
//

import UIKit

class LoogInViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
      
    // MARK: - Public Properties
    private let user = "User"
    private let password = "1234"
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = user
    }
        
    // MARK: - IB Actions
    @IBAction func loginButton() {
        if userNameTextField.text != user || passwordTextField.text != password {
            showAlert(title: "invalid login or password!",
                      massage: "Please, enter correct login and password")
        }
    }
    
    @IBAction func forgotNameButton() {
        showAlert(title: "Oops!", massage: "Your name is User 😎")
    }
    
    @IBAction func forgotPasswordButton() {
        showAlert(title: "Oops!", massage: "Your password is 1234 🧐")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - Private Methods
extension LoogInViewController {
    private func showAlert(title: String, massage: String) {
        let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: - UITextFieldDelegate
extension LoogInViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            loginButton()
            performSegue(withIdentifier: "showWelcomeVC", sender: nil)
        }
        return true
    }
    
}



//
//  ViewController.swift
//  Logintable
//
//  Created by Dymitr on 09.03.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var textPassword: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        initialSetup()
     
        textName.delegate = self
        textPassword.delegate = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        textName.text = welcomeVC.userLabel
    }

    private func initialSetup() {
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
    }
    @objc private func hideKeyboard ()  {
        self.view.endEditing(true)
    }
    
    
    @IBAction func logInAction() {
    }
    
    @IBAction func forgotUserName() {
        showAlert(title: "Oops!", message: "Your name is Alexey")
    }
    
    @IBAction func forgotPassword() {
        showAlert(title: "Oops!", message: "Your password is Efimov")
    }
}
// MARK: - Private Methods

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textName {
            textPassword.becomeFirstResponder()
        } else {
            logInAction()
            performSegue(withIdentifier: , sender: nil)
        }
        return true
    }
}
    


extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default) { _ in self.textPassword.text = ""
        }
        alert.addAction(okAlert)
        present(alert, animated: true)
    }
}

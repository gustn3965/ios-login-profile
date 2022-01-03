//
//  LoginProfile - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var idTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextField()
        setupLoginButton()
    }
    
    func setupTextField() {
        idTextField.delegate = self
    }
    
    func setupLoginButton() {
        loginButton.isEnabled = false
        loginButton.setTitleColor(.black, for: .disabled)
    }

    @IBAction private func clickLoginButton(_ sender: Any) {
        print("login")
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        guard let text = textField.text else {
            loginButton.isSelected = false
            return
        }
        loginButton.isEnabled = text.count >= 5
        loginButton.backgroundColor = text.count >= 5 ? .systemYellow : .systemGray5
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}


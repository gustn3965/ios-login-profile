//
//  LoginProfile - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailOrPhoneNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emailOrPhoneNumber.addTarget(self, action: #selector(emailTextFieldDidChange(_:)), for: .editingChanged)
        // Do any additional setup after loading the view.
    }
    
    @objc func emailTextFieldDidChange(_ sender: Any?) {
        guard let text = emailOrPhoneNumber.text, text.count >= 5 else {
            deactivateButton()
            return
        }
        activateButton()
    }
    
    func activateButton() {
        loginButton.backgroundColor = .systemYellow
        self.loginButton.isEnabled = true
    }
    
    func deactivateButton() {
        loginButton.backgroundColor = .systemGray5
        self.loginButton.isEnabled = false
    }
}


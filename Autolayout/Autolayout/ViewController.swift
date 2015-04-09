//
//  ViewController.swift
//  Autolayout
//
//  Created by Tanchun Chai on 10/4/15.
//  Copyright (c) 2015 Tanchun Chai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var passwordLabel: UILabel!

    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    
    @IBAction func toggleSecurity(sender: UIButton) {
        secure = !secure
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    var secure: Bool = false {
        didSet {
            updateUI()
        }
    }
    @IBAction func login() {
    }
    
    private func updateUI() {
        passwordField.secureTextEntry = secure
        passwordLabel.text = secure ? "Secured Password" : "Password"
    }
}


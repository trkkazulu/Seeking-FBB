//
//  ViewController.swift
//  Seeking FBB
//
//  Created by Jair-Rohm Wells on 5/30/20.
//  Copyright © 2020 Jair-Rohm Wells. All rights reserved.
//

import UIKit
import Firebase

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var signupBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func signUpBtnPressed(_ sender: Any) {
        print("Sign up button pressed")
        
    }
    
    @IBAction func logInBtnPressed(_ sender: Any) {
        print("Log in button pressed")
        
    }
}

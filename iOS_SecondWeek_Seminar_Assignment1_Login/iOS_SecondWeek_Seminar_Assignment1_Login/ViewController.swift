//
//  ViewController.swift
//  iOS_SecondWeek_Seminar_Assignment1_Login
//
//  Created by 노한솔 on 2020/04/28.
//  Copyright © 2020 노한솔. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        roundedTextField()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loginButton.layer.cornerRadius = 24
    
    }
    
    func roundedTextField() {
        idTextField.layer.cornerRadius = 22
        pwTextField.layer.cornerRadius = 22
    }

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBAction func gotoLogin(_ sender: Any) {
    }
    
}


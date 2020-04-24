//
//  SignUpViewController.swift
//  iOS_FirstWeek_Seminar_Ass2_Login
//
//  Created by 노한솔 on 2020/04/22.
//  Copyright © 2020 노한솔. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.title=""

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var pwField: UITextField!
    
    @IBAction func signUp(_ sender: Any) {
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "loginViewController") as? LoginViewController else {return}
        
        receiveViewController.id = self.idField.text
        receiveViewController.pw = self.pwField.text
        receiveViewController.modalPresentationStyle = .fullScreen
        
        self.present(receiveViewController, animated: true) {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

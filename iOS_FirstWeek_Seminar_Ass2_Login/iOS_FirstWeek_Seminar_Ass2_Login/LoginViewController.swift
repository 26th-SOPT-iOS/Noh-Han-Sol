//
//  LoginViewController.swift
//  iOS_FirstWeek_Seminar_Ass2_Login
//
//  Created by 노한솔 on 2020/04/22.
//  Copyright © 2020 노한솔. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    var id : String?
    var pw : String?
    
    private func setFields() {
        guard let id = self.id else {return}
        guard let pw = self.pw else {return}
        
        idField.text = id
        pwField.text = pw
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setFields()

        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var pwField: UITextField!
    

    @IBAction func logout(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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

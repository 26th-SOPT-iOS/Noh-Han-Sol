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
        setTextField()
        setButton()
        super.viewDidLoad()
        self.navigationController?.navigationBar.topItem?.title=""

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var nameTextField: PaddingField!
    
    @IBOutlet weak var idTextField: PaddingField!
    @IBOutlet weak var pwTextField: PaddingField!
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBAction func signUp(_ sender: Any) {
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "loginViewController") as? LoginViewController else {return}
        
        receiveViewController.id = self.idTextField.text
        receiveViewController.pw = self.pwTextField.text
        
        receiveViewController.modalPresentationStyle = .fullScreen
        
        self.present(receiveViewController, animated: true) {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func setTextField() {
        let color : UIColor = UIColor(red:52.0/255.0, green:52.0/255.0,blue: 52.0/255.0, alpha:47)
        let font = UIFont(name: "KoPubWorldDotum_PB", size:14)

           
        idTextField.attributedPlaceholder = NSAttributedString(string: "이메일", attributes: [NSAttributedString.Key.foregroundColor : color, NSAttributedString.Key.font : font ?? UIFont.boldSystemFont(ofSize: 14)])
        pwTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : color, NSAttributedString.Key.font : font ?? UIFont.boldSystemFont(ofSize: 14)])
        nameTextField.attributedPlaceholder = NSAttributedString(string: "이름", attributes: [NSAttributedString.Key.foregroundColor : color, NSAttributedString.Key.font : font ?? UIFont.boldSystemFont(ofSize: 14)])
        
        idTextField.layer.cornerRadius = idTextField.frame.height/2
        pwTextField.layer.cornerRadius = pwTextField.frame.height/2
        nameTextField.layer.cornerRadius = nameTextField.frame.height/2
    
           
       }
    
    func setButton() {
        signUpButton.layer.cornerRadius = signUpButton.frame.height/2
        signUpButton.contentEdgeInsets = UIEdgeInsets(top:12, left:0, bottom:11, right:0)
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

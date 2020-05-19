//
//  MainViewController.swift
//  iOS_FirstWeek_Seminar_Ass2_Login
//
//  Created by 노한솔 on 2020/04/22.
//  Copyright © 2020 노한솔. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        setButton()
        setTextField()
        self.setupLabelTap()
        super.viewDidLoad()
        
               
        // Do any additional setup after loading the view.
        
    }
    

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signInLabel: UILabel!
    @IBAction func login(_ sender: Any) {
        guard let inputID = idTextField.text else { return }
        guard let inputPWD = pwTextField.text else { return }
        LoginService.shared.login(id: inputID, pwd: inputPWD) { networkResult in
            switch networkResult {
            case .success(let token):
                guard let token = token as? String else { return }
                UserDefaults.standard.set(token, forKey: "token")
                guard let tabbarController = self.storyboard?.instantiateViewController(identifier:
                    "customTabbarController") as? UITabBarController else { return }
                tabbarController.modalPresentationStyle = .fullScreen
                self.present(tabbarController, animated: true, completion: nil)
            case .requestErr(let message):
                guard let message = message as? String else { return }
                let alertViewController = UIAlertController(title: "로그인 실패", message: message,
                                                            preferredStyle: .alert)
                let action = UIAlertAction(title: "확인", style: .cancel, handler: nil)
                alertViewController.addAction(action)
                self.present(alertViewController, animated: true, completion: nil)
            case .pathErr: print("path")
            case .serverErr: print("serverErr")
            case .networkFail: print("networkFail")
            }
        }
    }
    
    
    
    
   
    func setTextField() {
        let color : UIColor = UIColor(red:52.0/255.0, green:52.0/255.0,blue: 52.0/255.0, alpha:47)
        let font = UIFont(name: "KoPubWorldDotum_PB", size:14)

        
        idTextField.attributedPlaceholder = NSAttributedString(string: "이메일", attributes: [NSAttributedString.Key.foregroundColor : color, NSAttributedString.Key.font : font ?? UIFont.boldSystemFont(ofSize: 14)])
        pwTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor : color, NSAttributedString.Key.font : font ?? UIFont.boldSystemFont(ofSize: 14)])
        idTextField.layer.cornerRadius = 22
        pwTextField.layer.cornerRadius = 22
        pwTextField.isSecureTextEntry = true
 
        
    }
    
    func setButton() {
        loginButton.layer.cornerRadius = loginButton.frame.height/2
        loginButton.contentEdgeInsets = UIEdgeInsets(top:12, left:0, bottom:11, right:0)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func labelTapped( _sender: UITapGestureRecognizer) {
        guard let pvc = self.storyboard?.instantiateViewController(identifier: "signupViewController") as? SignUpViewController else {return}
        
        self.navigationController?.pushViewController(pvc, animated: true)
    }
    
    func setupLabelTap() {
        let color : UIColor = UIColor(red:100.0/255.0, green:100.0/255.0,blue: 100.0/255.0, alpha:100)
        signInLabel.textColor = color
        let labelTap = UITapGestureRecognizer(target:self, action: #selector(self.labelTapped(_sender:)))
        self.signInLabel.isUserInteractionEnabled = true
        self.signInLabel.addGestureRecognizer(labelTap)
        
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

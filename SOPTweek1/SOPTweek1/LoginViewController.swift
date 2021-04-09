//
//  LoginViewController.swift
//  SOPTweek1
//
//  Created by DYS on 2021/04/06.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
     
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginButtonPressed(){
        if emailTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false {
            guard let confirmVC = self.storyboard?.instantiateViewController(identifier: "ConfirmViewController") as? ConfirmViewController else {return}
            confirmVC.modalPresentationStyle = .fullScreen
            confirmVC.message = emailTextField.text
            
            self.present(confirmVC, animated: true, completion: nil)
        }
        else {
            print("모든 칸을 입력해주세요.")
        }
    }
    
    @IBAction func makeAccountButtonPressed(){
        guard let signUpVC = self.storyboard?.instantiateViewController(identifier: "SignUpViewController") else {return}
        
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    

}

//
//  SignUpViewController.swift
//  SOPTweek1
//
//  Created by DYS on 2021/04/06.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordCheckTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func makeAccountButtonPressed(){
        if emailTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false && passwordCheckTextField.text?.isEmpty == false {
            
            guard let confirmVC = self.storyboard?.instantiateViewController(identifier: "TabBarController") else {return}
            confirmVC.modalPresentationStyle = .fullScreen
            self.present(confirmVC, animated: true, completion: nil)
        } else {
            print("모든 칸을 입력하세요")
        }
    }
    
    
}

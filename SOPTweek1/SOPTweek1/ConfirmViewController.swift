//
//  ConfirmViewController.swift
//  SOPTweek1
//
//  Created by DYS on 2021/04/06.
//

import UIKit

class ConfirmViewController: UIViewController {

    @IBOutlet weak var welcomeMessageLabel: UILabel!
    var message : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setLabelText()
    }
    
    func setLabelText(){
        if let msg = self.message {
            welcomeMessageLabel.text = msg+"님\n가입이 완료되었습니다."
        }
    }
    
    @IBAction func OKButtonPressed(){
        let previousVC = self.presentingViewController
        
        self.dismiss(animated: true) {
            previousVC?.navigationController?.popViewController(animated: true)
        }
                     
    }
}

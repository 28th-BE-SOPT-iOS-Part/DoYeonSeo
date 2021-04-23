//
//  ShowProfileViewController.swift
//  SOPTweek1
//
//  Created by DYS on 2021/04/23.
//

import UIKit

class ShowProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeButtonTapped(){
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func button1Tapped(){
        print("1")
    }
    
    @IBAction func button2Tapped(){
        print("2")
    }
    
    @IBAction func button3Tapped(){
        print("3")
    }

}

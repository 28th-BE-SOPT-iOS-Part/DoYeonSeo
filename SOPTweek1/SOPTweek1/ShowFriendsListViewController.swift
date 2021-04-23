//
//  ShowFriendsListViewController.swift
//  SOPTweek1
//
//  Created by DYS on 2021/04/23.
//

import UIKit

class ShowFriendsListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func profileImageClicked(){
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "ShowProfileViewController") as? ShowProfileViewController else {return}
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}

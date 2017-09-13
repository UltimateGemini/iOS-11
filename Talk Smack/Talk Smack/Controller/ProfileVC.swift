//
//  ProfileVC.swift
//  Talk Smack
//
//  Created by Noel Franceschi on 9/12/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {
    
    //: Outlets
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
    }
    
    @IBAction func logoutPressed(_ sender: Any) {
        
        UserDataService.instance.logoutUser()
        NotificationCenter.default.post(name: NOTI_USER_DATA_DID_CHANGE, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func closeModalPressed(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    func setUpView() {

        userName.text = UserDataService.instance.name
        userEmail.text = UserDataService.instance.email
        profileImg.image = UIImage(named: UserDataService.instance.avatarName)
        profileImg.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(ProfileVC.closeTap(recognizer:)))
        bgView.addGestureRecognizer(closeTouch)
    }
    
    @objc func closeTap(  recognizer: UITapGestureRecognizer) {
        
       dismiss(animated: true, completion: nil)
    }
    
}




//
//  ChatVC.swift
//  Talk Smack
//
//  Created by Noel Franceschi on 8/31/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    //: Oulets
    @IBOutlet weak var menuBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        if AuthService.instance.isLoggedIn {
            
            AuthService.instance.findUserByEmail(completion: { (success) in
                
                NotificationCenter.default.post(name: NOTI_USER_DATA_DID_CHANGE, object: nil)
            })
        }
        
        MessageService.instance.findAllChannel { (success) in
            
            
        }
    }

}

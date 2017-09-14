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
    @IBOutlet weak var channelNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        NotificationCenter.default.addObserver(self, selector: #selector(ChatVC.userDataDidChange(notif:)), name: NOTI_USER_DATA_DID_CHANGE, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(ChatVC.channelSelected(_:)), name: NOTI_CHANNEL_SELECTED, object: nil)
        
        if AuthService.instance.isLoggedIn {
            AuthService.instance.findUserByEmail(completion: { (success) in
                NotificationCenter.default.post(name: NOTI_USER_DATA_DID_CHANGE, object: nil)
            })
        }
    }
    
    @objc func userDataDidChange( notif: Notification) {
        
        if AuthService.instance.isLoggedIn {
            
            onLoginGetMessages()
        } else {
            channelNameLbl.text = "Please Login"
        }
    }
    
    @objc func channelSelected (_ notif: Notification) {
        
      updateWithChannel()
    }
    
    func updateWithChannel() {
        
        let channelName = MessageService.instance.selectedChannel?.channelTitle ?? ""
        channelNameLbl.text = "#\(channelName)"
        
    }
    
    func onLoginGetMessages() {
        MessageService.instance.findAllChannel { (success) in
            
            if success {
                
            }
        }
    }

}

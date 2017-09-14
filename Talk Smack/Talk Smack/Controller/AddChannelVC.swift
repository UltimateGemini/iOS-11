//
//  AddChannelVC.swift
//  Talk Smack
//
//  Created by Noel Franceschi on 9/13/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {

    //: Outlets
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var chanDesc: UITextField!
    @IBOutlet weak var bgView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpView()
    }
    
    
    @IBAction func createChannelPressed(_ sender: Any) {
        
        guard let channelName = nameTxt.text, nameTxt.text != "" else { return }
        guard let channelDesc = chanDesc.text, chanDesc.text != "" else { return }
        
        SocketService.instance.addChannel(channelName: channelName, channelDescription: channelDesc) { (success) in
            
            if success {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func setUpView() {
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(recognizer:)))
        
        bgView.addGestureRecognizer(closeTouch)
        
        nameTxt.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedStringKey.foregroundColor : smackPurplePlaceHolder])
        
        chanDesc.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedStringKey.foregroundColor : smackPurplePlaceHolder])
    }
    
    @objc func closeTap( recognizer: UITapGestureRecognizer) {
        
        dismiss(animated: true, completion: nil)
    }
}

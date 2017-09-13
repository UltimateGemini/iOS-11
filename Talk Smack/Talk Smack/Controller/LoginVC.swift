//
//  LoginVCV.swift
//  Talk Smack
//
//  Created by Noel Franceschi on 8/31/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    //: Oulets

    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        
        spinner.isHidden = false
        spinner.startAnimating()

        guard let email = emailTxt.text, emailTxt.text != "" else { return }
        guard let pass = passwordTxt.text, passwordTxt.text != "" else { return }


        AuthService.instance.loginUser(email: email, password: pass) { (success) in

            if success {

                AuthService.instance.findUserByEmail(completion: { (success) in

                    if success {

                        NotificationCenter.default.post(name: NOTI_USER_DATA_DID_CHANGE, object: nil)
                        self.spinner.isHidden = true
                        self.spinner.stopAnimating()
                        self.dismiss(animated: true, completion: nil)
                    }
                })
            }
        }
    }
    
    @IBAction func closePressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    func setUpView() {
        
        spinner.isHidden = true
        emailTxt.attributedPlaceholder = NSAttributedString(string: "email", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceHolder])
        passwordTxt.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceHolder])
    }
}

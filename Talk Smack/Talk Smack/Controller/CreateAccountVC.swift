//
//  CreateAccountVC.swift
//  Talk Smack
//
//  Created by Noel Franceschi on 8/31/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    //: Outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    //:Vars
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func createAccntPressed(_ sender: Any) {
        
        guard let name = usernameTxt.text , usernameTxt.text != "" else {return}
        guard let email = emailTxt.text , emailTxt.text != "" else {return}
        guard let pass = passTxt.text , passTxt.text != "" else {return}
        
        AuthService.instance.registerUser(email: email, password: pass) {
            (success) in
            
            if success {
                
                AuthService.instance.loginUser(email: email, password: pass, completion: {(success) in
                    if success {
                        
                        AuthService.instance.createUser(name: name, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: {
                            (success) in
                            
                            if success {
                                print(UserDataService.instance,name, UserDataService.instance.avatarName)
                                self.performSegue(withIdentifier: UNWIND, sender: nil)
                            }
                        })
                    }
                })
            }
        }
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
        
        performSegue(withIdentifier: TO_AVATAR_PICKER, sender: nil)
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
    @IBAction func closedPressed(_ sender: Any) {
       performSegue(withIdentifier: UNWIND, sender: nil)
    }
}

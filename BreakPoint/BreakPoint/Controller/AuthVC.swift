//
//  AuthVC.swift
//  BreakPoint
//
//  Created by Noel Franceschi on 9/19/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class AuthVC: UIViewController {

    
    //: Outlets
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func fbSignInWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func gSignInWasPressed(_ sender: Any) {
        
    }
    
    @IBAction func signInWithEmailBtnWasPressed(_ sender: Any) {
        let loginVC = storyboard?.instantiateViewController(withIdentifier: "LoginVC")
        present(loginVC!, animated: true, completion: nil)
    }
    
}

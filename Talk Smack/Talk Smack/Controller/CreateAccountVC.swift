//
//  CreateAccountVC.swift
//  Talk Smack
//
//  Created by Noel Franceschi on 8/31/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    
    @IBAction func closedPressed(_ sender: Any) {

       performSegue(withIdentifier: UNWIND, sender: nil)
    }
}

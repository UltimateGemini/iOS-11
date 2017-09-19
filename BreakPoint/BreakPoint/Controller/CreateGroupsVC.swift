//
//  CreateGroupsVC.swift
//  BreakPoint
//
//  Created by Noel Franceschi on 9/19/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class CreateGroupsVC: UIViewController {

    //: Outlets
    @IBOutlet weak var titleTextField: InsetTextField!
    @IBOutlet weak var descriptionTextField: InsetTextField!
    @IBOutlet weak var emailSearchField: InsetTextField!
    @IBOutlet weak var groupMemberLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var doneBtn: UIButton!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func doneBtnWasPressed(_ sender: Any) {
    }
 
    @IBAction func closebtnWasPressed(_ sender: Any) {
        
    }
    
}

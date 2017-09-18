//
//  GoalCell.swift
//  GoalPost
//
//  Created by Noel Franceschi on 9/18/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    //: Outlets
    @IBOutlet weak var goalInfoLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    
    
    func configureCell(description: String, type: String, goalprogressAmount: Int) {
        self.goalInfoLbl.text = description
        self.goalTypeLbl.text = type
        self.goalProgressLbl.text = String(describing: goalprogressAmount)
    }
    

}

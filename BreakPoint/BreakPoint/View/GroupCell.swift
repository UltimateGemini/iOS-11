//
//  GroupCell.swift
//  BreakPoint
//
//  Created by Noel Franceschi on 9/20/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {


    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var groupInfoLbl: UILabel!
    @IBOutlet weak var memberCountLbl: UILabel!
    
    func configureCell(title: String, description: String, memeberCount: Int) {
        
        self.groupTitleLbl.text = title
        self.groupInfoLbl.text = description
        self.memberCountLbl.text = "\(memeberCount) members."
    }
    
}

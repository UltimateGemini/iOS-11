//
//  GroupFeedCell.swift
//  BreakPoint
//
//  Created by Noel Franceschi on 9/21/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class GroupFeedCell: UITableViewCell {

    //: Outlets
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
    }
    
    
}

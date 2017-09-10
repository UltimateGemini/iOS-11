//
//  AvatarCell.swift
//  Talk Smack
//
//  Created by Noel Franceschi on 9/10/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setUpView()
    }
    
    func setUpView () {
        
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
}

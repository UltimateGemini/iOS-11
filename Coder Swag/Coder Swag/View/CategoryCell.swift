//
//  CategoryCell.swift
//  Coder Swag
//
//  Created by Noel Franceschi on 8/29/17.
//  Copyright © 2017 Noel Franceschi. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    

    func updateViews(category: Category) {
        
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}

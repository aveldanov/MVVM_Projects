//
//  CategoryTableViewCell.swift
//  ItemApp
//
//  Created by Veldanov, Anton on 4/17/21.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    
    
    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}

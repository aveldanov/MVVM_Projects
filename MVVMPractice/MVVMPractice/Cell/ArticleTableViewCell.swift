//
//  ArticleTableViewCell.swift
//  MVVMPractice
//
//  Created by Veldanov, Anton on 12/9/20.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

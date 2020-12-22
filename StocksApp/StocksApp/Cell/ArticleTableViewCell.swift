//
//  ArticleTableViewCell.swift
//  StocksApp
//
//  Created by Veldanov, Anton on 12/22/20.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}

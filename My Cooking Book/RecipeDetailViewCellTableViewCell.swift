//
//  RecipeDetailViewCellTableViewCell.swift
//  My Cooking Book
//
//  Created by Anastasio Del Toro Almansa on 23/04/2023.
//

import UIKit

class RecipeDetailViewCellTableViewCell: UITableViewCell {

    @IBOutlet weak var keyLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

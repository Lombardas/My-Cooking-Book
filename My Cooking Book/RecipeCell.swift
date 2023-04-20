//
//  RecipeCell.swift
//  My Cooking Book
//  TableView-Cell controller
//  Created by Anastasio Del Toro Almansa on 20/04/2023.
//

import UIKit

class RecipeCell: UITableViewCell {

    
    @IBOutlet weak var imageRecipe: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelTime: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

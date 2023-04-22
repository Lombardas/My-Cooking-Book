//
//  DetailViewController.swift
//  My Cooking Book
//
//  Created by Anastasio Del Toro Almansa on 22/04/2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var recipeImage: UIImageView!
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelTime: UILabel!
    
    
    var recipe : Recipe!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        recipeImage.image = recipe.image
        labelName.text = recipe.name
        labelTime.text = "\(recipe.time) min"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  DetailViewController.swift
//  My Cooking Book
//
//  Created by Anastasio Del Toro Almansa on 22/04/2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var recipeImage: UIImageView!
    
   
    
    
    var recipe : Recipe!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = recipe.name
        // Do any additional setup after loading the view.
        recipeImage.image = recipe.image
        //labelName
        //labelTime.text = "\(recipe.time) min"
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

extension DetailViewController : UITableViewDelegate {
    
}

extension DetailViewController : UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 1
        case 1:
            return recipe.ingredients.count
        case 2:
            return 1
        case 3: return recipe.steps.count
        default:
            break
        }
        
        
        
        return recipe.ingredients.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailRecipeCell", for: indexPath) as! RecipeDetailViewCellTableViewCell
        
        
        switch indexPath.section {
        case 0:
            cell.keyLabel.text = "Ingredients: "
            cell.valueLabel.text = ""
        case 1:
           cell.keyLabel.text = ""
            cell.keyLabel.isHidden = true
           cell.valueLabel.text = recipe.ingredients[indexPath.row]
        case 2:
            cell.keyLabel.text = "Steps: "
            cell.valueLabel.text = ""
        case 3:
            cell.keyLabel.text = ""
            cell.keyLabel.isHidden = true
            cell.valueLabel.text = recipe.steps[indexPath.row]
        default:
            break
        }
        
        /*
        switch indexPath.row {
        case 0:
            cell.keyLabel.text = "Ingredients: "
            cell.valueLabel.text = "Ingrediente1, Ingrediente2, Ingrediente3,..."
        case 1:
            cell.keyLabel.text = "Ingredients: "
            cell.valueLabel.text = "Ingrediente1, Ingrediente2, Ingrediente3,..."
        case 2:
            cell.keyLabel.text = "Ingredients: "
            cell.valueLabel.text = "Ingrediente1, Ingrediente2, Ingrediente3,..."
        default:
            break
        }
        */
        
       /* forEach { ingredient in
            recipe.ingredients
        }*/
        
        return cell
    }
    
    
}

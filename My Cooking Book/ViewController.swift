//
//  ViewController.swift
//  My Cooking Book
//
//  Created by Anastasio Del Toro Almansa on 15/04/2023.
//

import UIKit

class ViewController: UITableViewController {

    var recipes : [Recipe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        var recipe = Recipe(name: "Tortilla de patatas", image: UIImage(imageLiteralResourceName: "tortilla"))
        recipes.append(recipe)
        
        recipe = Recipe(name: "Pizza marinera",image: UIImage(named:"pizzamarinera")!)
        recipes.append(recipe)
        
        recipe = Recipe(name: "Cheeseburguer", image: UIImage(named:"hamburguer")!)
        recipes.append(recipe)
        
        recipe = Recipe(name: "Cesar's Salad", image: UIImage(named:"cesar")!)
        recipes.append(recipe)
        
        
    }

    //MARK: - UItableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.recipes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let recipe = recipes[indexPath.row]
        let cellID = "RecipeCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        
        cell.textLabel?.text = recipe.name
        cell.imageView?.image = recipe.image
        return cell
    }
    
    
    /*override func tableview (_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }*/

}


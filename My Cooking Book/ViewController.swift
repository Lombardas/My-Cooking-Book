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
        
        var recipe = Recipe(name: "Tortilla de patatas")
        recipes.append(recipe)
        
        recipe = Recipe(name: "Pizza marinera")
        recipes.append(recipe)
        
        recipe = Recipe(name: "Cheeseburguer")
        recipes.append(recipe)
        
        recipe = Recipe(name: "Cesar's Salad")
        
        
        
    }


}


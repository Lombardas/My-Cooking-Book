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
        
        var recipe = Recipe(name: "Tortilla de patatas", image: UIImage(imageLiteralResourceName: "tortilla"),time:60,
                            ingredients: ["Patatas","Huevos","Cebolla","Aceite de Oliva"],
                            steps: ["Cortar las patatas en cuadros irregulares y freirlas",
                                "Cortar la cebolla en cuadritos y freirla tambien",
                                "batir los huevos y mezclarlos en sarten con las patatas",
                                   "Voltear cuidadosamente usando un plato como tapadera"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Pizza Margarita",image: UIImage(named:"pizzamarinera")!, time: 120, ingredients: ["Harina", "Levadura","Aceite","Agua","Sal","Tomate","Queso mozzarella"],steps: ["Hacer una masa con harina, levadura, aceite, agua y sal","Dejar la masa reposar 30min","Extender la masa en una bandeja de horno y cubrir con tomate y queso","Hornear durante 12min a 200 grados"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Cheeseburguer", image: UIImage(named:"hamburguer")!,time: 40,
                        ingredients: ["Pan de hamburguesas","Carne picada","Lechuga", "Tomate natural","Queso Cheddar"],
                        steps: ["Moldear la carne a la forma de hamburguesa",
                                "Freir en sarten o plancha con poco aceite",
                                "Montar en el pan con lechuga y tomate natural, encima la hamburguesa y justo sobre la carne, el queso"])
        recipes.append(recipe)
        
        recipe = Recipe(name: "Cesar's Salad", image: UIImage(named:"cesar")!,time: 10, ingredients: ["Lechuga","Pechuga de pollo","Pan frito","Cebolla","Tomate natural","Salsa Cesar"],
        steps: ["Lavar y trocear las verduras",
               "Freir en sarten o plancha el pollo",
               "Montar todos los ingredientes con el pollo troceado y el pan frito en la parte superior",
               "Cubrir con abundante salsa Cesar"])
        recipes.append(recipe)
        
        
    }

    //MARK: - UItableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.recipes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let recipe = recipes[indexPath.row]
        let cellID = "RecipeCell"
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! RecipeCell
        
        cell.imageRecipe.layer.cornerRadius = 42.0
        cell.imageRecipe.clipsToBounds = true
        
        
        cell.labelName.text = recipe.name
        cell.imageRecipe.image = recipe.image
        cell.labelTime.text = "\(recipe.time!) min"
        return cell
    }
    
    
    /*override func tableview (_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }*/

}


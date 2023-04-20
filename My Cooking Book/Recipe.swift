//
//  Recipe.swift
//  My Cooking Book
//
//  Created by Anastasio Del Toro Almansa on 15/04/2023.
//

import Foundation
import UIKit


class Recipe {
    
    var name: String!
    var image: UIImage!
    var time: Int!
    
    var ingredients : [String]!
    var steps: [String]!
    
    init(name:String, image: UIImage, time: Int, ingredients: [String],steps: [String])
    {
        self.name = name
        self.image = image
        self.time = time
        self.ingredients = ingredients
        self.steps = steps
    }
    
}

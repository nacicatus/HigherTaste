//
//  RecipeDetailViewController.swift
//  Prasadam
//
//  Created by Saurabh Sikka on 23/12/15.
//  Copyright © 2015 Saurabh Sikka. All rights reserved.
//

import Foundation
import UIKit

class RecipeDetailViewController: UIViewController {

    var recipe: Recipe!
    @IBOutlet weak var recipeNameLabel: UILabel!
    @IBOutlet weak var recipeIngredientsTextView: UITextView!
    @IBOutlet weak var recipeDirectionsTextView: UITextView!
   
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let recipe = recipe {
            self.recipeNameLabel.text = recipe.name
            self.recipeIngredientsTextView.text = recipe.ingredients
            self.recipeIngredientsTextView.textColor = UIColor.orangeColor()
            self.recipeDirectionsTextView.text = recipe.directions
            self.recipeDirectionsTextView.textColor = UIColor.orangeColor()
            //self.recipeImage.image = UIImage(named: recipe.image)
        
        }
    }
}

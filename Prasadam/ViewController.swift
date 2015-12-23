//
//  ViewController.swift
//  Prasadam
//
//  Created by Saurabh Sikka on 23/12/15.
//  Copyright © 2015 Saurabh Sikka. All rights reserved.
//

import UIKit

class RecipeTableViewController: UITableViewController {
    
    let allRecipes = Recipe.allRecipes
    
    // MARK: Table View Data Source
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.allRecipes.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("RecipeCell")!
        let recipe = self.allRecipes[indexPath.row]
        
        // Set the name
        cell.textLabel?.text = recipe.name
        
        // set the image
        let cellImg : UIImageView = UIImageView(frame: CGRectMake(2, 2, 50, 50))
        cellImg.image = UIImage(named: recipe.image)
        cell.addSubview(cellImg)
        
        //cell.imageView?.image = UIImage(named: recipe.image)
       
        
        return cell
    }
    
    
    // MARK: UITableView Delegate
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let detailController = self.storyboard!.instantiateViewControllerWithIdentifier("RecipeDetailViewController") as! RecipeDetailViewController
        detailController.recipe = self.allRecipes[indexPath.row]
        self.navigationController!.pushViewController(detailController, animated: true)
        
    }
    

}

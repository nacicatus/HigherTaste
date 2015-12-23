//
//  Recipe.swift
//  Prasadam
//
//  Created by Saurabh Sikka on 23/12/15.
//  Copyright © 2015 Saurabh Sikka. All rights reserved.
//

import Foundation

struct Recipe {
    
    let name: String
    let ingredients: String
    let directions: String
    let image: String
    
    static let NameKey = "NameKey"
    static let IngredientsKey = "IngredientsKey"
    static let DirectionsKey = "DirectionsKey"
    static let ImageKey = "ImageKey"
    
    // Generate a Recipe from a four entry dictionary
    
    init(dictionary: [String : String]) {
        self.name = dictionary[Recipe.NameKey]!
        self.ingredients = dictionary[Recipe.IngredientsKey]!
        self.directions = dictionary[Recipe.DirectionsKey]!
        self.image = dictionary[Recipe.ImageKey]!
    }
}

// Extension

extension Recipe {
    
    static var allRecipes: [Recipe] {
        
        var recipeArray = [Recipe]()
        
        for d in Recipe.localRecipeData() {
            recipeArray.append(Recipe(dictionary: d))
        }
        return recipeArray
    }
    

    
/** Get localRecipeData from hard coded 3-entry dictionary:
*/
    
    static func localRecipeData() -> [[String : String]] {
        return [
            [Recipe.NameKey : "Pesto", Recipe.IngredientsKey : "1 pound linguine noodles\n2½ cups fresh basil leaves\n6 tablespoons olive oil\n1/3 cup pine nuts (when not available, blanched almonds may be used)\n¾ cup Parmesan cheese\n¾ teaspoon salt\n¾ teaspoon black pepper", Recipe.DirectionsKey : "In a blender crush up basil leaves, olive oil, pine nuts, cheese, salt, and pepper. Blend until a thick sauce.\nIn 1-gallon pot add linguine to boiling water to which you have added ½ teaspoon salt. Boil linguine 10 minutes until the pasta is cooked. Drain thoroughly.\nRinse with cold water. Put pasta in a warm serving dish, and spoon pesto sauce over pasta.\nServes 4.", Recipe.ImageKey : "pesto"],
            [Recipe.NameKey : "Stuffed Eggplant", Recipe.IngredientsKey : "2 eggplants (cut in half, lengthwise)\n1 small can of tomato puree (8 oz.)\n1 cup bread crumbs\n2 zucchini (chopped in ¼ - inch cubes)\n1 pound mozzarella cheese (grated)\n1½ cups oil or ghee\n1½ teaspoons black pepper\n1½ teaspoons salt\n¼ teaspoon hing\n1 teaspoon lemon juice\n1 tablespoon basil leaves\n1 tablespoon oregano flakes", Recipe.DirectionsKey : "In large skillet heat 1 cup oil or ghee. Cut eggplants lengthwise in equal halves. Place all four halves of eggplants face down in hot oil. Adjust to low heat. Cook eggplant for about 10 minutes on each side or until very tender. It's ready when you can push a knife point through easily. Turn off flame and set aside.\n\nIn one-quart saucepan add ¼ cup oil or ghee. When heated add 1 teaspoon black pepper, hing, and lemon juice. Quickly add tomato puree. Add ½ cup water, 1 teaspoon salt, and basil leaves. Cook on medium heat for ½ hour, stirring often.\n\nIn small skillet add last ¼ cup of oil or ghee. When hot add ½ teaspoon black pepper. Quickly add chopped zucchini, add ½ teaspoon salt, and fry at high heat for 5 minutes, stirring frequently. Add bread crumbs and lower heat. (Spiced bread crumbs may be used, but then refrain from using salt.) Cook for 2 more minutes.)\n\nReturn to skillet with cooked eggplants. Divide zucchini stuffing in four parts, put evenly on top of eggplants, and cover with sauce and grated cheese. Cover and put on a low flame until cheese is melted. Garnish with parsley and oregano. Serve hot.\n\nServes 4.", Recipe.ImageKey : "eggplant"],
            [Recipe.NameKey : "Herb Rolls", Recipe.IngredientsKey : "2 tablespoons yeast\n1 ½ cups warm water (105°)\n1/3 cup buttermilk\n1 tablespoon sugar\n1 teaspoons salt\n½ cup melted butter\n3 cups flour\n1 teaspoon oregano\n1 ½ teaspoons basil leaves\n1 tablespoon chopped parsley\n¼ teaspoon hing", Recipe.DirectionsKey : "In a large bowl add yeast to water and let sit for 30 seconds. Add melted butter, spices, buttermilk, salt, and sugar.\n\nGradually stir bowl with a little butter and add dough. Cover and let rise in warm kitchen area until doubled in bulk (approximately 45 minutes). Fold dough over, punch down, and knead 1 minute.\n\nPreheat oven to 375°. Grease muffin pans.\n\nMake 36 small balls about 1-inch each. Fill greased muffin tins with 3 balls each. They will look like a cloverleaf.\n\nCover and let rise for 1 hour.\n\nBake for 15 minutes or until golden brown. Serve hot with butter.\n\nMakes 1 dozen rolls.", Recipe.ImageKey : "herbrolls"],
            [Recipe.NameKey : "Batter-fried Mozzarella", Recipe.IngredientsKey : "1 pound mozzarella cheese (cut in 1 ½ inch cubes)\nflour for coating\n1 cup buttermilk\nbread crumbs for coating (spiced)\noil or ghee for deep frying\nbasil leaves for garnishing", Recipe.DirectionsKey : "Coat the cheese in flour, dip into the buttermilk, then into the bread crumbs. Repeat the process.\nDeep fry cubes a few at a time in hit oil or ghee until golden brown. Drain on absorbent paper. Serve hot, garnished with basil leaves.\nThis can also be served with a sweet-and-sour sauce, or tomato chutney\n\nServes 4", Recipe.ImageKey : "bfmozz"],
            [Recipe.NameKey : "Vegetable Salad", Recipe.IngredientsKey : "1 8-ounce can pitted black olives (drained)\n1 16-ounce can water-packed artichoke hearts (drained)\n½ pound hard Italian cheese (cut in ½-inch slices)\n3 medium size tomatoes (cut in eighths)\n3 tablespoons olive oil\n1 ½ teaspoons lemon juice\n2 teaspoons chopped fresh basil leaves\n½ teaspoon salt\n½ teaspoon black pepper\npinch of hing", Recipe.DirectionsKey : "In bowl combine all of the above ingredients and set in refrigerator for 1 hour before serving.\n\nServes 4", Recipe.ImageKey : "vegsalad"],
            [Recipe.NameKey : "Lemon Sherbet", Recipe.IngredientsKey : "1 cup whipping cream\n1 cup yogurt (plain)\n2/3 cup sugar\njuice from 1 lemon\na drop of yellow food coloring (if desired)\n1 ½ teaspoons grated lemon peel", Recipe.DirectionsKey : "In a bowl combine whipping cream and sugar. Whip with mixer on high speed until cream is stiff. Fold in lemon juice, yogurt, and lemon peel. Add coloring at this time if desired. Put in freezer. Stir every 45 minutes until frozen (about 5 hours).\n\nServes 4", Recipe.ImageKey : "lemonsherbet"],
            [Recipe.NameKey : "Minestrone Soup", Recipe.IngredientsKey : "2 tablespoons olive oil\n1 cup tomato (skinned and chopped)\n1/3 cup garbanzo beans (soaked overnight)\n¼ cup basil leaves\n1 parsley sprig (chopped)\n9 cups water\n1 carrot (peeled and diced)\n1 cup diced potatoes\n1 large zucchini (diced)\n1 cup shredded cabbage\nsalt\nfreshly ground pepper\n½ cup barley\n½ cup parmesan cheese\n½ teaspoon hing", Recipe.DirectionsKey : "Heat oil in large saucepan, add hing and cabbage. Sauté for 1 minute. Add tomatoes, chick-peas, basil, parsley, and water. Bring to a boil, cover, and simmer for 1 hour.\nAdd carrots and celery, and cook for 20 more minutes.\nAdd remaining ingredients, except for cheese. Cook 45 more minutes. Add salt to taste.\n\nLet the soup stand for 15 minutes. Stir in Parmesan cheese and serve hot.\n\nServes 6.", Recipe.ImageKey : "minestrone"],
            [Recipe.NameKey : "Kofta Dinner", Recipe.IngredientsKey : "Sauce:\n3 pounds tomatoes, blended (preferably Italian, plum type)\n¼ cup olive oil\n2 tablespoon butter\n½ teaspoons hing\n1medium carrot, cut in 8 pieces\n2 teaspoons sweet basil\n2 teaspoon salt\n1 teaspoon turbinado sugar\n¼ teaspoon black pepper\n2 bay leaves\n1 pound spaghetti\n\nKofta:\n2 cups grated cauliflower\n2 cups grated cabbage\n1 ½ cups garbanzo bean flour\n1 ½ teaspoons salt\n½ teaspoon hing\n1 teaspoon garam masala\n1 teaspoon ground cumin\n½ teaspoon corriander powder\n½ teaspoon turmeric\npinch of cayenne\nghee or oil for deep frying", Recipe.DirectionsKey : "Sauce:\nHeat oil and butter over medium heat. Add hing and fry for 30 seconds. Add carrot pieces and fry for 1 minute. Stir in the blended tomatoes and the remaining seasonings. Raise the heat and bring to a boil, then reduce the heat and simmer for 1 hour.\nRemove carrot pieces and bay leaves.\n\nKofta:\nHeat ghee in a wok or 2-quart saucepan. Combine all of the ingredients in a bowl. Roll in 24 balls, 1 inch in diameter. Place as many balls in the ghee as possible, leaving enough room for them to float comfortably. Fry over medium heat for 10 minutes, until the kofta is a rich golden brown. Drain in colander.\nPlace the kofta in the tomato sauce 5 minutes before serving. If after sitting the kofta soaks up most of the sauce, add a little water to produce more liquid.\n\nCook spaghetti as directed on box. Serve kofta and sauce over spaghetti.\n\nServes 4.", Recipe.ImageKey : "kofta"],
            [Recipe.NameKey : "Breaded Zucchini Sticks", Recipe.IngredientsKey : "3 zucchini\n1 cup flour\n½ cup bread crumbs\n1 ½ cups water\n½ teaspoons salt\n1 teaspoon basil leaves\npinch of black pepper\npinch of hing\noil for frying", Recipe.DirectionsKey : "Quarter zucchini lengthwise and cut each piece in half.\nIn bowl combine flour, bread crumbs, and spices. Add water and stir.\nFill skillet 1/3 full with oil and then heat. Dip zucchini pieces in batter and then into hot oil. Fry on all sides until tender and crisp. \nServe hot.\n\nServes 4", Recipe.ImageKey : "bzucch"],
            [Recipe.NameKey : "Green Beans & Tomato", Recipe.IngredientsKey : "1 ½ pounds green beans (cut in half)\n1 large tomato (skinned and chopped)\n4 tablespoons olive oil\n½ teaspoons salt\n¼ teaspoon freshly ground pepper\npinch of hing", Recipe.DirectionsKey : "Heat oil in nonstick skillet. Add hing. Stir in tomato, then add beans. Add enough water to barely cover beans. Add salt and pepper, and bring to a boil. Cover and lower heat. Simmer for 15 minutes or until beans are tender. Remove cover and increase heat to thicken the liquid (about 3 minutes). Serve warm or cool.\nServes 4.", Recipe.ImageKey : "greenbean"],
            [Recipe.NameKey : "Calzone", Recipe.IngredientsKey : "Dough:\n\n2 tablespoons yeast\n1 cup warm water (105º)\n1 teaspoon salt\n1/3 cup oil (not olive oil)\n2 cups flour\n\nFilling:\n\n1/3 cup chopped mozzarella cheese\n½ cup Parmesan cheese\n1 ½ cups ricotta cheese\n1/3 cup chopped parsley\n1 cup deep fried eggplant cubes\n2 teaspoons salt\n1 teaspoon pepper\n¼ teaspoon hing\noil for deep frying", Recipe.DirectionsKey : "Add yeast to warm water and let sit for 1 minute. Add salt, oil, and flour. Knead for 3 minutes\nSprinkle tabletop with flour. Separate dough into 2-inch balls. Cover with damp cloth and let them rise for 45 minutes.\nWhile dough is rising mix all the filling ingredients together.\nHeat oil in wok until very hot.\nRoll out balls into 6-inch circles. Divide stuffing into 8 portions. Place stuffing in center and fold over. Place fork in flour and use to seal edges. Fry in hot oil for about 1 minute on each side until they are reddish brown. Serve hot.\nMakes 8.", Recipe.ImageKey : "calzone"],
            [Recipe.NameKey : "Neapolitan Cheesecake", Recipe.IngredientsKey : "Use a 8 ½ inch springform pan.\nPreheat oven to 375°.\n\nCrust:\n\n1/3 cup ground walnuts\n1 1/3 tablespoons melted butter\n2 tablespoons turbinado sugar\n¾ cup flour\n2 tablespoons water\nCombine ingredients and press down on bottom of buttered springform pan.\n\nBottom Layer of Cake (carob):\n\n4 tablespoons carob powder\n1/3 cup whipping cream\n½ cup sour cream\n12 ounces cream cheese (softened)\n½ cup turbinado sugar\n1 teaspoon cornstarch\n\nBlend all ingredients in a blender until smooth. Pour on top of crust.\n\nMiddle Layer of Cake (vanilla):\n\n1 ½ teaspoons vanilla\n1/3 cup whipping cream\n½ cup sour cream\n12 ounces cream cheese (softened)\n½ cup turbinado sugar\n1 teaspoon cornstarch\n\nBlend all ingredients in a blender until smooth. Pour gently over carob layer.\n\nTop Layer of Cake (strawberry):\n\n3 tablespoons strawberry jam\n½ teaspoon strawberry flavoring (optional)\n1/3 cup whipping cream\n½ cup sour cream\n12 ounces cream cheese (softened)\n½ cup turbinado sugar\n1 teaspoon cornstarch\nBlend all ingredients in blender until smooth. Pour gently over vanilla layer.", Recipe.DirectionsKey : "Bake in oven for 50 minutes. Let stand on cooling rack for ½ hour and then refrigerate for at least 3 hours. Serve cool.\n\nMakes 12 slices.", Recipe.ImageKey : "cheesek"]
        
        ]
    }

}



struct Recipe {
    let name: String 
    var ingredients: Set<String>
    var steps: [String]
    func printDescription() {
        print("Recipe: \(name)")
        print("Ingredients: \(ingredients)")
        for (index, step) in steps.enumerated() {
            print("\(index + 1). \(step).")           
        }
        
    }
}

let cookiesRecipe = Recipe( 
    name: "Chocolate Cookie", 
    ingredients: [
        "Cocoa Powder",
        "Chocolate chip",
        "Flour"
    ], steps: [
        "Action 1",
        "Action 2",
        "Action 3"
    ]

)

cookiesRecipe.printDescription()
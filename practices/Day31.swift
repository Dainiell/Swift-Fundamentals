enum Category {
    case electronics,clothing,food
}

struct Product {
    var name: String
    var price: Double
    var category: Category 

}
struct Inventory {
    var products: [Product]

    
    func expensive(thresold: Double) -> [Product] {
        return products.filter {$0.price >= thresold}
    }
    func allNames() -> [String]{
        return products.map {$0.name}
    }
    func totalPrice() -> Double {
        return products.reduce(0) {$0 + $1.price}
    }

    init(products: [Product]) {
        self.products = products
    }
}
    
//new
enum Category {
    case Bags
    case Jacket
    case Bottle
}


extension Category {
    var message: String {
        switch self {
            case .Bags: return "Thankyou for purchasing to us!"
            case .Jacket: return "Thankyou for purchasing to us!"
            case .Bottle: return "Thankyou for purchasing to us!"
        }
    }
}

enum Quantity {
    case high 
    case medium
    case low
}

extension Quantity {

    init(count:Int) {
        switch count {
            case 1..<5:
                self = .low
            case 10..<30: 
                self = .medium
            case 30..<100: 
                self = .high
            default:    
                self = .low
        }
    }

    var stockMessage: String {
        switch self {
            case .high: return "High Stock Limited Soon!"
            case .medium: return "Stock Available"
            case .low: return "Low Stock"
        }

    }

}

struct Product {
    var category: Category
    var name: String
    var quantity: Quantity


    var formatMessage: String {
        return "\(name) From \(category) Section in \(quantity.stockMessage) \(category.message)"
    }
   
}

var productDB: [Product] = [
    Product(category: .Bags, name: "URBAN 2WAY DAYPACK" , quantity: .low),
    Product(category: .Jacket, name: "SCUBA JACKET " , quantity: .low),
    Product(category: .Bags, name: "LEATHER WAY BACKPACK" , quantity: .high),
    Product(category: .Bottle, name: "32oz Stussy Water" , quantity: .low),
    Product(category: .Bags, name: "FORMAL LEATHER PACK" , quantity: .medium)
]


func totalProducts() -> Int {
    return productDB.count 
}
print(totalProducts())

//////////////////////////////////////////



func productAt(number: Int) -> Product {
    return productDB[number]
}
let p = productAt(number: 2)
print(p.name)

//////////////////////////////////////////



func createProduct(name:String, category: Category,quantity: Quantity) -> Product{
    return Product(category: category , name:name , quantity:quantity)
}
let new = createProduct(name: "Nike 1998 Winter Jacket", category: .Jacket, quantity: .low)
print(new.formatMessage)



//////////////////////////////////////////

func updateQuantity(for product: Product ,newQuantity:Quantity ) -> Product {
    return Product(category: product.category , name: product.name ,quantity: newQuantity)
}

let newQuantity = updateQuantity(for: productDB[1], newQuantity: .high) 
print(newQuantity.formatMessage)



//////////////////////////////////////////
func updateNames(for product: Product, newName:String) -> Product {
    return Product(category: product.category, name: newName ,quantity: product.quantity)
}

let newNames = updateNames(for: productDB[0],newName: "TNF TOP 1 BAG")
print(newNames.formatMessage)


print(productDB[0].formatMessage)
print(" ")

print(productDB[1].formatMessage)
print(" ")

print(productDB[2].formatMessage)
print(" ")

print(productDB[3].formatMessage)
print(" ")

print(productDB[4].formatMessage)



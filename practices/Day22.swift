let productName: String = "USB Hub"
let price: Double = 550.0
let quantityText: String = "2"
let shippingFee: Double = 80.0


print("Product: \(productName)")


if let quantity = Int(quantityText) {
    print("Quantity: \(quantity)")
    
    let subTotal: Double = price * Double(quantity) 
        print("Subtotal: \(subTotal)")
        
    let FinalTotal:Double = subTotal + shippingFee
        print("Final Total: \(FinalTotal)")
        
}else {
    print("Insufficient Balance")
}


//Task 2
let productName: String = "Mouse Pad"
let price: Double = 200.0
let quantityText: String = "two"


print("Product: \(productName)")

if let quantity = Int(quantityText) {
    print("Quantity: \(quantity)")
        
}else {
    print("Quantity: Invalid")
}
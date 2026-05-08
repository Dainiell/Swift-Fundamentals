let customerName: String = "Ralph"
let productName: String = "Wireless Charger"
let price: Double = 899.0
var quantity: Int = 1
let shippingFee: Double = 75.0

let firstQuantity: Int = quantity
let total: Double = price * Double(quantity) + shippingFee
quantity = 3
let newTotal: Double = price * Double(quantity) + shippingFee 


print("Customer: \(customerName)")
print("Product: \(productName)")
print("First Quantity: \(firstQuantity)")
print("First Total: \(total)")
print("Updated Quantity: \(quantity) ")
print("Updated Total: \(newTotal)")

//end
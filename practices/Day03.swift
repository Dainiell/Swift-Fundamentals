let productName = "iPhone Case"
let price = 499.0
var cartQuantity = 1

let firstsubtotal = price * Double(cartQuantity)
cartQuantity = 4
let subtotal = price * Double(cartQuantity)

print("Product: \(productName)")
print("First Total: \(firstsubtotal)")
print("Updated Total: \(subtotal)")


//end
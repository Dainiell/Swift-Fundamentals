let productName = "Mouse"
let price = 800.0
var quantity = 1


var subtotal = price * Double(quantity)
quantity = 3
var updatedTotal = price * Double(quantity)

print("First subtotal: \(subtotal)")
print("Updated subtotal: \(updatedTotal)")


//end
let customerName: String = "Ralph"
let restaurantName: String = "Burger House"
let mealPrice: Double = 149.0
var quantity:Int  = 2
let deliveryFee: Double = 50.0


let firstQuantity:Int = quantity
let firstTotal:Double = mealPrice * Double(firstQuantity) + deliveryFee
quantity = 4
let updatedTotal:Double = mealPrice * Double(quantity) + deliveryFee


print("Customer: \(customerName)")
print("Restaurant: \(restaurantName)")
print("First Quantity: \(firstQuantity)")
print("First Total: \(firstTotal)")
print("Updated Quantity: \(quantity) ")
print("Updated Total: \(updatedTotal)")

//end
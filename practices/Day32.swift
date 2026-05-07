let userName: String = "Ralph"
let userRole: String = "member"
let productName: String = "Portable Monitor"
let price: Double = 3500.0
let quantityText: String = "1"
let walletBalance: Double = 3400.0
var isLoggedIn: Bool = false
var supportEmail: String? = nil

isLoggedIn = true
supportEmail = "support@app.com"


print("User: \(userName)")


if isLoggedIn == true {
    print("Login: Logged in")
    
}else {
    print("Login: No account logged in")
    
}

switch userRole {
case "admin": 
    print("Role: admin")
case "member": 
    print("Role: member")
    
case "guest":
    print("Role: guest")
    
default:
    print("You are not belong to this community")

}

print("Product: \(productName)")


if let quantity = Int(quantityText) {
    print("Quantity: \(quantity)")
    
    let subtotal: Double = price * Double(quantity) 
        print("Subtotal: \(subtotal)")

    let discount: Double

    switch userRole {
    case "admin":
        discount = 500.0 
     case "member": 
        discount = 200.0
    case "guest": 
        discount = 0.00
    default: 
        discount = 0.00 
    }

    print("Discount: \(discount)") 

    let finalTotal: Double = subtotal - discount
        print("Final Total: \(finalTotal)")

    if walletBalance >= finalTotal {
        print("Payment: Approved")
        
    }else {
        print("Payment: Declined")
        
    } 
    if let email = supportEmail {
        print("Support Email: \(email)")
        
    }else{ 
        print("Support Email: No support email")
        
    }


}else {
    print("System Error")
    
}

//endssss

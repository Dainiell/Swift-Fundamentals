// var username: String? = "Ralph"
// var score: Int? = nil

// print(username!)



// var age: Int? = 19
// var year: Int! = nil

// print("My Age is \(age!)")


// if year == nil {
//     print("You did not enter year")
    
// }else {
//     print("You are \(age!) and you was born in the year \(year!)")
    
// }

// var username: String? = "ralph_dev"
// var password: String? = nil  


// if let user = username {
//     if let pass = password {
//         print("Login Successful \(user)")
        
//     }else  {
//         print("Please enter your password")
        
//     }
// }else {
//     print("Please enter your username")
    
// }


// var customerName: String? = "Ralph Dainiell"
// var discountCode: String? = nil
// var deliveryNotes: String? = "Leave at the gate"
// var totalAmount: Double? = 1250.50


// if let customer = customerName {
//     print("Customer: \(customer)") 
// }    
//     else {
//         print("Guest checkout")
        
//     }
// if discountCode == nil {
//     print(discountCode ?? "No discount applied")
    
//     }else {
//         print(discountCode!)
    
// }
// if deliveryNotes == nil  {
//     print(deliveryNotes ?? "No special instructions")
    
//     }else {
//         print(deliveryNotes!)
        
//     }
    
// if totalAmount != nil {
//     print("Total: ₱\(totalAmount!)")
    
// }else {
//     print("Total amount not available.")
    
// }
 

// var nickname: String? = nil
// var age: Int? = 22
// var emergencyContact: String? = nil
// var address: String? = "Silang, Cavite" 


// if let name = nickname {
//     print("Nickname: \(name)")
    
//     }else {
//         print("No nickname set.")
//     }

// if age != nil {
//     print("Age: \(age!)")
//     }


// if emergencyContact != nil {
//     print(emergencyContact!)
    
//     }else {
//         print(emergencyContact ?? "Not provided")
//     }

// if let place = address {
//     print("Address: \(place)")
    
//     }else {
//         print("No address on file ")
        
//     }



var itemName: String? = "Wireless Mouse"
var stockCount: Int? = nil
var supplier: String? = nil
var price: Double? = 599.00

if let item = itemName {
    print("Item: \(item)")
    
    }else {
        print("Unknow item")
    }
if stockCount != nil {
    print("Stock: \(stockCount!)")
    
    }else {
        print("Stock: \(stockCount ?? 0)")
    }

if let supply = supplier {
    print("Supplier: \(supply)")
    
    }else {
        print("No supplier listed")
        
    }
print("Price: ₱\(price!)")

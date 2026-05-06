let userName: String = "Ralph"
var isLoggedIn: Bool = false
var recoveryEmail: String? = nil

isLoggedIn = true 
recoveryEmail = "ralph@email.com"


print("User: \(userName)")


if isLoggedIn == true {
    print("Status: Logged in")
    
}else {
    print("Status: Not Login")
    
}


if let email = recoveryEmail {
    print("Recovery Email: \(email)")
    
}else{
    print("Recovery Email: None")
    
}
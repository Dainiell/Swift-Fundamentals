let userName: String = "Ralph"
let selectedTheme: String = "dark"
let notificationCountText: String = "5"
var isLoggedIn: Bool = false
var supportEmail: String? = nil 

isLoggedIn = true
supportEmail = "support@iosapp.com"

print("User: \(userName)")


if isLoggedIn {
    print("Session: Active")
    
}else {
    print("Session: Inactive")
    
}


switch selectedTheme {

case "dark":
print("Theme: Dark Mode")
case "light":
print("Theme: Light Mode")
case "system":
print("Theme: System Default")
default: 
print("Theme: Unknown Theme")

} 


if let notif = Int(notificationCountText) {
    print("Notifications: \(notif)")
    
}else {
    print("No notification")
    
}

if let email = supportEmail {
    print("Support Email: \(email)")
    
}else {
    print("No support email")
    
}

let userName: String = "Ralph"
let subscriptionTier: String = "pro"
let syncStatus: String = "failed"
let pendingUploadsText: String = "6"
let secondsPerUpload: Double = 2.5
var isLoggedIn: Bool = false
var supportEmail: String? = nil


isLoggedIn = true
supportEmail = "support@cloudapp.com" 

print("User: \(userName)")


if isLoggedIn {
    print("Session: Active")
    
}else {
    print("Session: Inactive")
    
}


switch subscriptionTier {

case "pro":
print("Subscription Access: Pro Access")
case "premium":
print("Subscription Access: Premium Access")
case "basic":
print("Subscription Access: Basic Access")
default:
print("Please select your plan")

}

switch syncStatus {

case "failed": 
print("Sync Status: Sync Failed")
case "successful":
print("Sync Status: Sync Confirm")
default:
print("Sync Status: Sync Error")

}

if let uploads = Int(pendingUploadsText) {
    print("Pending Uploads: \(uploads)")
    
    let retryTime:Double = Double(uploads) * secondsPerUpload 
     print("Estimated Retry Time: \(retryTime) seconds")
    
}else {
    print("System Error")
    
}

if let email = supportEmail {
    print("Support Email: \(email)")
    
}else {
    print("No support email")
    
}
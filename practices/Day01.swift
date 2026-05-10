let appName:String = "SwiftQuest"
var playerName: String? = nil 
var playerScore: Int = 0
var playerLevel: Double = 1.0 


playerName = "Ralph"

print("App: \(appName)")

if let name = playerName {
    print("Player: \(name)")
}else {
    print("Set your name: ")
    
}

print("Score: \(playerScore)")
print("Level: \(playerLevel)")

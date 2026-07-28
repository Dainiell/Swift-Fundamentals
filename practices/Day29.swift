enum guestType {
    case New,Regular,VIP 
}

extension guestType {
    var greet: String {
        switch self {
            case .New: return "Welcome to Okada Manila!"
            case .Regular: return "Welcome to Okada Manila!. just like before?"
            case .VIP: return "Welcome back to Okada Manila!. new set or order repeat?"
        }
    }
}

struct guestInfo {
    var name: String
    var type: guestType

    init(name:String = "Enter name guest", type: guestType = .New) {
        self.name = name
        self.type = type
    }
    func getInfo() -> String {
        return "\(type.greet) \(name)!"
    }
}

let guest01 = guestInfo(name:"Ralph")

print(guest01.getInfo())

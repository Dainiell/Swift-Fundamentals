class GymMember {
    var name: String 
    var MembershipType: String 

    init(name: String, MembershipType: String) {
        self.name = name
        self.MembershipType = MembershipType
    }

    func checkIn() -> String {
        return "\(name) checked in as a \(MembershipType) member"
    } 

}

let member1 = GymMember(name: "Ralph" , MembershipType: "Premium") 
print(member1.checkIn())

 member1.MembershipType = "Regular"
print(member1.checkIn()) 
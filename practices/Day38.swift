class GymMember {
    var name: String 
    var MembershipType: String 
    var visits: Int

    init(name: String, MembershipType: String) {
        self.name = name
        self.MembershipType = MembershipType
        self.visits = 0
    }

    func checkIn() -> String {
        visits += 1
        return "\(name) checked in as a \(MembershipType) member (Visit #\(visits))"
    } 

        func addBonusVisits(_ count: Int) {
        visits += count
    }
}

let member1 = GymMember(name: "Ralph" , MembershipType: "Premium") 
print(member1.checkIn())

member1.MembershipType = "Regular"
print(member1.checkIn()) 

member1.addBonusVisits(0)
print(member1.checkIn())
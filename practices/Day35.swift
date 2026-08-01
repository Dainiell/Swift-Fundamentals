enum MembershipType {
    case basic
    case premium
    case vip
}

struct Member {
    var name: String
    var age: Int
    var membership: MembershipType
}

var memberDB: [Member] = [
    Member(name: "Rico Fernandez", age: 28, membership: .premium),
    Member(name: "Trisha Villanueva", age: 22, membership: .basic),
    Member(name: "Diego Torres", age: 35, membership: .vip),
    Member(name: "Amara Lopez", age: 19, membership: .basic),
    Member(name: "Kevin Alonzo", age: 41, membership: .premium)
]

func averageAge() -> Double {
    var totalAge = 0 

    for member in memberDB {
        totalAge += member.age 
    }
    return Double(totalAge) / Double(memberDB.count)
}
print(averageAge()) 

/////////////////////// 

func vipMember() -> [Member] {
    var vips: [Member] = []

    for vip in memberDB {
        if vip.membership == .vip {
            vips.append(vip)
        }
    }
    return vips

}
let VIP = vipMember()
print(VIP.count)
 
let namesVIP = VIP.map {$0.name}
print(namesVIP)

////////////////////////// 


func basicMembers() -> [String] {
    var basic: [String] = []

    for basicMember in memberDB {
        if basicMember.membership == .basic {
            basic.append(basicMember.name)
        }
    }
    return basic
}
let baySik = basicMembers()
print(baySik)   
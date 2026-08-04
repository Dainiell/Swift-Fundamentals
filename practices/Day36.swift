enum Role {
    case Junior,MidLevel,Senior
}
enum Position {
    case Developer,QA,Database
}

struct Employee {
    var name: String
    var DateHire: String
    var RoleType: Role
    var Position: Position

    var iDFormat: String {
        return "Hello \(name)! | Date hire: \(DateHire) | Role: \(RoleType) - \(Position)"
    }
}

var CompanyDB: [Employee] = [
    Employee(name: "Lance", DateHire: "June 12,2029" , RoleType: .Junior , Position: .Database),
    Employee(name: "Ralph", DateHire: "June 8,2029" , RoleType: .Junior , Position: .Developer),
    Employee(name: "Dainiell", DateHire: "July 14,2029" , RoleType: .Junior , Position: .Developer)


]

print(CompanyDB[1].iDFormat)

func DatabaseAnalyzer() -> [Employee] {
    var DB: [Employee] = [] 

    for positions in CompanyDB {
        if positions.Position == .Database {
            DB.append(positions)
        }
    }
    return DB
}
let analyzer1 = DatabaseAnalyzer() 
print("\(analyzer1.count) - Database Employee")


func DevAnalyzer() -> [Employee] {
    var Dev: [Employee] = [] 

    for positions in CompanyDB {
        if positions.Position == .Developer {
            Dev.append(positions)
        }
    }
    return Dev
}
let analyzer2 = DevAnalyzer() 
print("\(analyzer2.count) - Developer Employee")
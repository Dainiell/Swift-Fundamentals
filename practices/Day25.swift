enum studentType {
    case Regular
    case Irregular 
    case PartTime
}

enum Subjects {
    case Programming
    case Research
    case Professionalism
}
struct students {
    var name: String
    var year: Int 
    var course: String

    var description: String {
        return "\(name), \(year) ,\(course)"
    }
}

var studentDB: [students] = [
    students(name: "Ralph", year: 3 , course: "BSIT"),
    students(name: "Clark", year: 3 , course: "BSNS"),
    students(name: "Lance", year: 5 , course: "BSARCH")
]
print(studentDB[0].description)
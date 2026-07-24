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
    var year: Int?
    var course: String

    var description: String {
        return "\(name), \(year!) ,\(course)"
    }
    mutating func Architect(for arch:students) {
        if arch.year! > 4 {
            print("Architect Student")
        }else {
            print(arch.year!)
            
        }
    }
    func validation(for valid:students) {
        guard let valids = valid.year else {
            print("Your not officially enrolled")
            return
        }
        print("\(valids)")
    }
    
}

var studentDB: [students] = [
    students(name: "Ralph", year: 3 , course: "BSIT"),
    students(name: "Clark", year: 3 , course: "BSNS"),
    students(name: "Lance", year: 5 , course: "BSARCH"),
    students(name: "John" , year:nil, course: "BSIT")
]

print(studentDB[0].description)  
studentDB[2].Architect(for: studentDB[2])
studentDB[3].validation(for: studentDB[3])
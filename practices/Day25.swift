enum studentType {
    case IT
    case NS
    case CTIHM
}

enum Subjects {
    case Programming
    case Research
    case Professionalism
}

extension studentType  {
    var properUnit: Subjects {
        switch self {
            case .IT: return .Programming
            case .NS: return .Research
            case .CTIHM: return .Professionalism
        }

    }
}
struct students {
    var name: String
    var year: Int?
    var type: studentType

    var description: String {
        return "\(name), \(year!) ,\(type)"
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
    students(name: "Ralph", year: 3 , type: .IT),
    students(name: "Clark", year: 3 , type: .IT),
    students(name: "Lance", year: 5 , type: .NS),
    students(name: "John" , year:nil, type: .CTIHM)
]

print(studentDB[0].description)  
studentDB[2].Architect(for: studentDB[2])
studentDB[3].validation(for: studentDB[3])

let units = studentType.IT 
print(units)
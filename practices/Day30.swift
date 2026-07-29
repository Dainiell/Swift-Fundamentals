struct Student {
    var name: String 
    var grades: [Double]

    func average() -> Double? {
        guard !grades.isEmpty else { 
            return nil 
        }
        return grades.reduce(0, +) / Double(grades.count)
    }
    func passingGrade(thresold:Double) -> [Double] {
        return grades.filter {$0 >= thresold}
    }
    func letterGrade() -> [String] {
        return grades.map { grade in 
            switch grade {
                case 90...100: return "A"
                case 80..<90: return "B"
                case 70..<80:  return "C"
                case 60..<70: return "D"
                default: return "F"
            }
        }
    }


}

let student1 = Student(name: "Ralph", grades: [90, 85, 88])
let student2 = Student(name: "Anna", grades: [95, 92, 91])
let student3 = Student(name: "Miko", grades: [70, 65, 80])

var studentDict: [String: Student] = [
    "Ralph": student1,
    "Anna": student2,
    "Miko": student3
]

var topName = ""
var topAverage = 0.0

for (key, Student) in studentDict {
    if let avg = Student.average() {
        print("\(key): \(avg)")

        if avg > topAverage {
            topAverage = avg
            topName = key
        }
    }
}

print("Highest average: \(topName) with \(topAverage)")
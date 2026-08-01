enum GradeLevel {
    case excellent
    case passing
    case failing
}

struct Student {
    var name: String
    var score: Int
    var grade: GradeLevel
}

var studentDB: [Student] = [
    Student(name: "Miguel Santos", score: 95, grade: .excellent),
    Student(name: "Ana Reyes", score: 60, grade: .failing),
    Student(name: "Carlo Mendoza", score: 78, grade: .passing),
    Student(name: "Bea Cruz", score: 40, grade: .failing),
    Student(name: "Ella Ramos", score: 88, grade: .excellent)
]



func totalStudents() -> Int{
    return studentDB.count
}
print(totalStudents())
//////////////////////////////
 


func studentAt(number: Int) -> Student {
    return studentDB[number]
}
let person = studentAt(number: 2) 
print(person.name) 
//////////////////////////////
 

func createStudent(name: String, score:Int , grades:GradeLevel) -> Student {
    return Student(name: name, score: score, grade:grades)
} 
let newStudent = createStudent(name:"Ralph Dainiell" , score: 96, grades: .excellent) 
print(newStudent.name)
//////////////////////////////////////////          
 


func passingStudent() -> [Student] {
    var results: [Student] = []

    for student in studentDB {
        if student.score >= 60 {
            results.append(student)
        }
        
    }
    return results
}
let passed = passingStudent()
print(passed.count)
/////////////////////////////////////////


func highScorer() -> Student {
    var topStudent = studentDB[0]

    for student in studentDB {
        if student.score > topStudent.score {
            topStudent = student
        }
    }
    return topStudent 
}
let top = highScorer()
print(top.name)
/////////////////////////////////////                          


func countGrade(_ level: GradeLevel ) -> Int {
    var count = 0 

    for student in studentDB {
        if student.grade == level {
            count += 1
        }
    } 
    return count 
}      

print(countGrade(.excellent))
print(countGrade(.passing)) 
/////////////////////////////////////////////

func lowestScore() -> Student {
    var lowest = studentDB[0]

    for student in studentDB {
        if student.score < lowest.score {
            lowest = student
        }
    }
    return lowest
}
let lowStudent = lowestScore()
print(lowStudent.name) 
///////////////////////////////////


func excellentStudent() -> [Student] {
    var bestStudent: [Student] = []

    for student in studentDB {
        if student.grade == .excellent {
            bestStudent.append(student)
        }
    }
    return bestStudent
}
let best = excellentStudent()
print(best.count)

////////////////////////    



func classSummary() -> String {
    let total = totalStudents()
    let top = highScorer()
    let low = lowestScore()

    return "Total student: \(total) , Top scorer: \(top.name) , Lowest Scorer: \(low.name)"
}
print(classSummary())
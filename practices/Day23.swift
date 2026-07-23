struct quizCards {
    var question: Int
    var answer: String 
    var hint: String? 
    var timesReviewed: Int
    
    var isMastered: Bool {
        return timesReviewed >= 5
    }

    mutating func addTimes() {
        timesReviewed += 1
    }
   
}
var cards: [quizCards] = [
    quizCards(question: 1, answer:"Tokyo", hint:"Toks", timesReviewed:7),
    quizCards(question: 2, answer:"Hello World", hint:"Hello", timesReviewed:2),
    quizCards(question: 3, answer:"BGC", hint:nil, timesReviewed:1),
    quizCards(question: 4, answer:"Taguig", hint:"Tags", timesReviewed:3),
    quizCards(question: 5, answer:"Manila", hint:"The Main", timesReviewed:5)
]
func showHint(for card: quizCards) {
    guard let hint = card.hint else {
        print("No Hint!")
        return
    }
    print("Hint: \(hint)")
}
func reviewSession(cards: [quizCards], onReview: (Int, Bool) -> Void) {
    for card in cards {
        onReview(card.question, card.isMastered)
    }
}   
reviewSession(cards:cards) { question,mastered in 
    print("\(question): \(mastered ? "Mastered!" : "Needs review")")
}

let masterCard = cards.filter { $0.isMastered }
print(masterCard.count)


cards[0].addTimes()
print(cards[0].timesReviewed)

let questions = cards.map { $0.answer }
print(questions)

let biza = cards.filter {$0.isMastered}.map {$0.question}
print(biza)



struct StudentInfo {
    var schoolEmail: String
    var name: String
    var course:String?
    var year:Int?

    mutating func checkCourse(for student: StudentInfo) {
        if let course = student.course {
            print(course)
        }else {
            print("Your not officially enrolled!")
        }
    }
    mutating func yearArchitect(for architect: StudentInfo) {
        if architect.year! > 4 {
            print("Architect Student!")
            
        }else {
            print(architect.year!)
        }
    }

}
var students:[StudentInfo] = [
    StudentInfo(schoolEmail:"ralphdainiell.edu.lpu", name:"Ralph Dainiell", course:"BSIT",year: 1),
    StudentInfo(schoolEmail:"lancelops.edu.lpu", name:"Lance Lopez", course:"BSNS",year: 2 ),
    StudentInfo(schoolEmail:"matthewala.edu.lpu", name:"Matthew Ala", course: nil,year: 2),
    StudentInfo(schoolEmail:"clark.edu.lpu", name:"Clark Pacardo", course:"BSARCH",year: 5)
]
 
students[0].checkCourse(for: students[0])
students[3].yearArchitect(for: students[3])


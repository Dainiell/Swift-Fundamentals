var quizScores: [Int] = [] 


if quizScores.isEmpty {
    print("No quizzes taken yet. Start your first quiz!")
    

}

let firstScore: Int = 85

quizScores.append(firstScore) 
print("First quiz score: \(quizScores[0])")


let bonusPoints: Int = 10

quizScores[0] += bonusPoints
print("Score with bonus: \(quizScores[0])")


let remainingScores: [Int] = [72, 90, 68]


quizScores += remainingScores
print("Total quizzes taken: \(quizScores.count)")



for (number,scores) in quizScores.enumerated() {
    if scores >= 90 {
        print("Quiz \(number): Excellent — \(scores)")
    }else if scores >= 75 && scores <= 89 {
        print("Quiz \(number): Passed — \(scores)")
    }else {
        print("Quiz \(number): Needs improvement — \(scores)")
    }
}

var subjectName: String? = nil

if let subs = subjectName  {
    print("Reviewing: \(subs)")
}else {
    print("No subject set")
}

subjectName = "Swift Programming" 

if let subs = subjectName {
    print("Reviewing: \(subs)")
} else {
    print("No subject set")
}

var total = 0

for score in quizScores {
    total += score
    
}
print("Total score: \(total)")

let average: Int = total / quizScores.count

switch average {
    case 90...100: print("Outstanding")
    case 75...89: print("Good Job")
    case 60...74:print("Keep studying")
    default: print("At risk")
    
}
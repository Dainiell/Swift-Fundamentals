var quizScores: [String:Int] = ["Info Assurance": 91,"Data Sciences": 94,"Capstone 1": 95,"Elec 3": 90] 
let topScore: (subject:String, score: Int) = (subject:"Capstone 1",score:95)


func getScore(for subject:String , from scores:[String:Int]) -> Int? {
    return scores[subject]
}
if let result = getScore(for:"Data Sciences",from: quizScores) {
    print("Score: \(result)")
    
}

let checkStreak = { (streak: (Int)) -> String in 
    let check = streak >= 5 ? "On fire!" : "Keep going!" 
    return (check)

}
print(checkStreak(7)) 



let getStatus = {(isCorrect: Bool) -> String  in
    return isCorrect ? "Correct!" : "Wrong!"
    
}
print(getStatus(true))



func notify(isCorrect:Bool ,onNotify:(String) -> Void) {
    let stats =  isCorrect ? "Correct!" : "Wrong!"
    onNotify(stats)
}
notify(isCorrect: true) { stats in 
    print(stats)

}



func difficultyLabel(timesReview:Int) -> String {
    if timesReview >= 5 {
        return "Hard"
    }else if timesReview >= 2 {
        return "Medium"
    }else {
        return "Easy"
    }
    
}
let firstfunc = difficultyLabel(timesReview: 3) 
print(firstfunc)



func studyReminder(daySinceLastReview: Int) -> String {
    if daySinceLastReview >= 7 {
        return "Review Now!"
    }else if daySinceLastReview >= 3 {
        return "Review Soon!"
        
    }else {
        return "You're on track!"
    }
}
let secondfunc = studyReminder(daySinceLastReview: 10) 
print(secondfunc)


func classifyGrade(percent: Double) -> String {
    if percent >= 90 {
        return "A"
    }else if percent >= 80 {
        return "B"
    }else if percent >= 70 {
        return "C"
    }else if percent >= 60 {
        return "D"
    }else {
        return "F"
    }
}
let grade = classifyGrade(percent: 94.75) 
print(grade)


func annouceGrade(percent:Double ,onAnnouce: (String) -> Void) {
    var grade: String = ""
    if percent >= 90 {
        grade = "A"
    }else if percent >= 80 {
        grade = "B"
    }else if percent >= 70 {
         grade = "C"
    }else if percent >= 60 {
         grade = "D"
    }else {
         grade = "F"
    }
    onAnnouce(grade)
}
annouceGrade(percent: 95.78) { grade in
    print(grade)
}


func annouceRank(score: Int, onRank:(String) -> Void) {
    var scores:String = ""
    if score >= 95 {
        scores = "First Place!"
    }else if score >= 85 {
        scores = "Second Place!"
    }else if score >= 75 {
        scores = "Third Place!"
    }else {
        scores = "keep climbing!"
    }
    onRank(scores)
}
annouceRank(score: 92) { scores in
    print(scores)
}

func processScores(scores:[Int], onProcess:(Int,String)-> Void) {
    for score in scores {
        let label = score >= 75 ? "Pass" : "Fail"
        onProcess(score,label)
    }   
}
processScores(scores:[90, 60, 78, 45]) { score,label in 
    print("\(score): \(label)")

}


func notifyReviews(cardNames:[String], timesReviewed:[Int], onNotify:(String,String) -> Void) {
    for i in 0..<cardNames.count {
        let status = timesReviewed[i] < 3 ? "Needs review" : "Mastered"
        onNotify(cardNames[i], status)
    }
}
notifyReviews(cardNames:["Math", "Science", "History"],timesReviewed:[5,1,3]) { cardNames,timesReviewed in 
    print("\(cardNames):\(timesReviewed)")

}

func calculateBonuses(streaks:[Int],onCalculate:(Int,Int) -> Void) {
    for i in 0..<streaks.count {
        let bonus = streaks[i] >= 5 ? streaks[i] * 10 : 0
        onCalculate(streaks[i],bonus) 
    }
}
calculateBonuses(streaks:[7, 2, 10, 4]) { streaks , bonus in 
    print("Streak: \(streaks) Bonus: \(bonus)")

}
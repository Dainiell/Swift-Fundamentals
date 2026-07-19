func weeklyProgress(cardsComplete:[Int], onSummary:(Int, String) -> Void) {
    for i in 0..<cardsComplete.count {
        var status: String = ""
        if cardsComplete[i] >= 10 {
             status = "Great Day!"
        }else if cardsComplete[i] >= 5 {
             status = "Good"
        }else {
            status = "Low activity"
            
        }
        onSummary(cardsComplete[i],status)
    }
}
weeklyProgress(cardsComplete:[12, 4, 8, 15, 2, 6, 9]) { cardsComplete,status in 
    print("\(cardsComplete) cards - \(status)")

}



func trackPerfectScores(scores:[Int], onTrack: (Int,Bool) -> Void) {
    for i in 0..<scores.count {
        let numb = scores[i] == 100 
        onTrack(scores[i],numb)
    }
}
trackPerfectScores(scores:[100, 85, 100, 70, 100]) { scores,numb in
   print(numb ? "Perfect!" : "Scores: \(scores)")
}



func summarizeScores(scores:[Int],onComplete:(Int,Int) -> Void) {
    var total = 0 
    for score in scores {
        total += score
    }
    onComplete(total,scores.count)
}
summarizeScores(scores:[85, 90, 78, 92, 88]) { total,scores in 
    print("Total: \(total) from \(scores) scores")

}



func getHighScores(scores:[Int], meetCondition:(Int) -> Bool) -> [Int] {
    var result:[Int] = []
    for score in scores {
        if meetCondition (score) {
            result.append(score)
        }
        
    }
    return result
}
let high = getHighScores(scores:[95, 60, 88, 45, 100, 70]) {$0 >= 80}
print(high)



func findCards(cardNames: [String], matches:(String) -> Bool) -> String? {
    for name in cardNames {
        if matches(name) {
            return name 
        }
    }
    return nil
}
let find = findCards(cardNames:["Math", "Science", "History", "English"]) {$0.hasPrefix ("S")}
if let result = find {
        print(result)
    }else {
        print("No card found")
    }


func applyBonus(streaks:[Int],bonusRule: (Int) -> Int) -> [Int] {
    return streaks.map(bonusRule)
}
let bonus = applyBonus(streaks:[3, 7, 2, 10, 5]) {$0 >= 5 ? $0 * 10 : $0}
print(bonus)




let numbers = [4,5,1,10,21].map {$0 >= 3 ? $0 : 0}
print(numbers)
let levels = 10 
let freeLevels = 4
let bonusLevels = 3

for level in 1...levels {
    if level == bonusLevels {
        print("Skip the level \(bonusLevels)")
        continue
    }
    print("Play level \(levels)")
    if level == freeLevels {
        print("You have played all \(freeLevels) free levels. Buy the game to play the remaining \(levels - freeLevels) levels.")
        break
    }
    
}


let quizScore = 68 

if quizScore <= 100 && quizScore >= 90 {
    print("Excellent")
    
}else if quizScore <= 89 && quizScore >= 75 {
    print("Good Job")
    
}else if quizScore <= 74 && quizScore >= 60 {
    print("Needs Review")
    
}else  {
    print("Study Again")
    
}

switch quizScore {
    case 90...100: print("Excellent")
    case 75...89: print("Good Job")
    case 60...74: print("Needs Review")
    default: print("Study Again")
    
}



let ingredient = 10

if ingredient == 0 {
    print("Out of Stock")
    
}else if ingredient <= 3 {
    print("Low Stock")
    
}else {
    print("In Stock")
    
} 



let category = "Dessert"

switch category {
    case "breakfast": print("🥪")
    case "Lunch": print("🍽️")
    case "Dessert": print("🥯")
    case "Snack": print("🥐")
    default: print("Please select your category")   
}





let streakDays = 1

switch streakDays {
 case 1...2: print("Beginner")
 case 3...6: print("Consistent")
 case 7...13: print("Dedicated")
 case 14...20: print("Unstoppable")
 default: print("Do more keep it up!")
    
}


let studentName: String = "Ralph"
var score: Int = 0 
let totalQuestion: Int = 10  

let correctAnswer = 7 

let percentage: Double = Double(correctAnswer) / Double(totalQuestion) * 100

print("\(studentName) got Score: 7/10 \(percentage)%")



if percentage >= 75 {
    print("Passed")
}else if (50...74).contains(percentage) {
    print("Needs Review")
}else {
    print("Failed")
}

switch percentage {
    case 75...100: print("Passed")
    case 50...74: print("Needs Review")
    default: print("Failed")
}


let answers: [Bool] = [true,true,true,true,true,true,true,true,true,true]
var loopsScore = 0 
for answer in answers {
    if answer {
        loopsScore += 1
    }
}
print("Loop Count: \(loopsScore)")

let filter = answers.filter {$0}.count
print("Filter Count: \(filter)")


let subjectScores:[String:Int] = ["Math": 8, "Science": 6,"History": 9]     

for (subjects,score) in subjectScores {
    print("\(subjects): \(score)")
}

let topSubject:(name:String,score:Int) = ("History" , 9) 
print("Top Subject: \(topSubject.name) with \(topSubject.score)")

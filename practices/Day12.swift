let studentInfo: (name: String, age: Int, university: String) = ("Ralph", 20, "LPU") 
print(studentInfo.name)
print(studentInfo.age)
print(studentInfo.university)


var subjects: [String] = []

subjects.append("Math")
subjects.append("Science")
subjects.append("English")

print("Total subjects: \(subjects.count)")

var isProfileComplete: Bool = false 
isProfileComplete.toggle()

if isProfileComplete == true {
    print("\(studentInfo.name)'s profile is complete.")
    
}else {
    print("Profile incomplete.")
    
}

var schoolEmail: String? = nil

if let email = schoolEmail {
    print("Email: \(email)")
    
}else {
    print("No school email set")
}

schoolEmail =  "ralph@lpu.edu.ph"

if let Email = schoolEmail {
    print("Email: \(Email)")
    
}else {
    print("No school email set")
}

let quizResult: (subject: String, score: Int, passed: Bool) = ("Math", 88, true)

if quizResult.passed == true {
    print("Passed \(quizResult.subject) with \(quizResult.score)")
}else {
    print("Failed \(quizResult.subject)")
}

for (subsnumber,subjects) in subjects.enumerated() {
    print("Subject \(subsnumber + 1): \(subjects)")
    
}

let finalScore: Int = quizResult.score 

switch finalScore {
    case 90...100: print("Outstanding")
    case 75...89: print("Good Job")
    case 60...74: print("Keep studying")
    default: print("At risk")
}

var sessions: [String] = ["Session 1", "Session 2", "Session 3"] 

while !sessions.isEmpty {
    print(sessions.last!)
    sessions.removeLast()
}

var allScores: [Int] = [78, 92, 65, 88, 71]
let scoreRange: (min: Int, max: Int) = (allScores.min()!, allScores.max()!)
print("Lowest: \(scoreRange.min), Highest: \(scoreRange.max)")


let topStudent: (name: String, score: Int , university: String) = ("Ralph", 95, "LPU")

var leaderboards: [String] = []

leaderboards.append("Ralph")
leaderboards.append("John")
leaderboards.append("Maria")
leaderboards.append("Anna")

print("Total Players: \(leaderboards.count)")

var isLeaderboardLive: Bool = false 

isLeaderboardLive.toggle()

if isLeaderboardLive == true {
    print("Leaderboard is now live!")
    
}else {
    print("Leaderboard is offline")
    
}

var announcement: String? = nil

if let annouce = announcement {
    print("Annoucement: \(annouce)")
    
}else {
    print("No annoucement")
    
}

announcement = "Quiz is start at 8pm"

if let annouce = announcement {
    print("Annoucement: \(annouce)")
    
}else {
    print("No annoucement")
    
}


for (number,player) in leaderboards.enumerated() {
    print("Rank \(number + 1): \(player) ")
    
}

switch topStudent.score {
    case 90...100: print("\(topStudent.name): Champion")
    
    case 75...89: print("\(topStudent.name): Contender")
          
    default: print("\(topStudent.name): Keep going")
}

var rounds: [String] = ["Round 1", "Round 2" , "Round 3"]

while !rounds.isEmpty{
    print(rounds.last!)
    rounds.removeLast()
}

var allscores: [Int] = [88,74,95,61,82]

let scoringRange: (min: Int, max: Int) = (allscores.min()! ,allscores.max()!) 
print("Lowest: \(scoringRange.min), Highest: \(scoringRange.max)")

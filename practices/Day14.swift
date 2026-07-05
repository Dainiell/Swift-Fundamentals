let studentName: String = "Ralph"
let University: String = "LPU"
var logIn: Bool = false 
logIn.toggle() 

if logIn == true {
    print("Welcome \(studentName) from \(University)!")
    
}else {
    print("Please login first!")
    
}

var subjects: [String:Int] = [:] 

subjects ["Intro Swift Programming"] = 97
subjects ["SwiftUi Programming"] = 95
subjects ["Data Security"] = 93
subjects ["Intro to DevOps"] = 94 
 

print("Total subjects: \(subjects.count)")

subjects["Data Security"]! += 3 
print("Updated Data Security score: \(subjects["Data Security"]!)")


if let subs = subjects["Filipino"] {
   print("Filipino score: \(subs)")
}else {
    subjects ["Filipino"] = 80
    print("Filipino added with score: \(subjects["Filipino"]!) ")
}


var subsScore: [Int] = []

subsScore.append(97)
subsScore.append(95)
subsScore.append(96)
subsScore.append(94)


print("Total scores recorded: \(subsScore.count)")


for (number,subsScore) in subsScore.enumerated() {
    if subsScore >= 90 {
        print("Subjet \(number + 1): \(subsScore) Outstanding")
        
    }else if subsScore <= 89 && subsScore >= 75 {
        print("Subjet \(number + 1): \(subsScore) Passed")
        
    }else if subsScore >= 60 && subsScore <= 74 {
        print("Subjet \(number + 1): \(subsScore) Needs Improvement")
    }else  {
        print("Failed")
        
    }
}

var total = 0

for score in subsScore {
    total += score
}
print("Total score: \(total)")

let average = total / subsScore.count
switch average {
  case 90...100 :print("Average: \(average) Outstanding")
  case 75...89 : print("Average: \(average) Good Job")
  case 60...74 : print("Average: \(average) Keep studying")
  default: print("At risk")
  
}

var Students: (name: String , averages: Int) = ("Ralph" , 95)

if Students.averages >= 75 {
     print("\(Students.name) passed with an average of \(Students.averages)")
}

var pendings: [String] = ["Review Swift Optionals","Review Swift Arrays","Review Swift Dictionaries"]

repeat {
    print(pendings.last!)
    pendings.removeLast()
}while !pendings.isEmpty
func studentName(name: String, univ: String) {
    print("Welcome,\(name) from \(univ)!")
    
}
studentName(name:"Ralph" , univ:"LPU")




func subjects(name: String, score: Int) {
    if score >= 90 {
        print("\(name): Excellent")
        
    }else if score <= 75 && score <= 89 {
        print("\(name): Passed")
        
    }else if score <= 60 && score <= 74 {
        print("\(name): Needs Improvement")
        
    }else {
        print("\(name): Failed")
        
    }
}
subjects(name: "Swift Programming 1" , score: 95)




func studentsGrades(scores: [Int]) -> Int {
    var total = 0 
    for score in scores {
        total += score
    }
    return total
}
let total = studentsGrades(scores: [88, 92, 75, 61, 84])
print("Total: \(total)") 





func average(_ avg: [Int]) -> Int {
   var total = 0
    for score in avg {
        total += score
    }
    return total / avg.count   
}
let avg = average( [88, 92, 75, 61, 84])
print("Average: \(avg)")






func scoreRange(_ range: [Int]) -> (min:Int , max:Int) {
    return(range.min()! , range.max()!)
}
let ranges = scoreRange([88, 92, 75, 61, 84])
print("lowest range: \(ranges.min)")
print("Highest range: \(ranges.max)")


func subject(subs: [String: Int])  {
    for (subs,score) in subs {
        if score  >= 90 {
            print("\(subs): Excellent")
        }else if  score >=  75 {
            print("\(subs): Passed")
        }else {
            print("\(subs): Failed")
        }
    }
} 
subject(subs: ["Swift Programming": 97 , "Data Security": 95, "Data Analyst": 92])

func checkEmail(email: String?) {
    guard let email = email else {
        print("No email provided")
        return
    }
    print("Email: \(email)")
}
checkEmail(email: nil)
checkEmail(email: "ralph@lpu.edu.ph")


func validateLogin(username: String, password: String) -> (success: Bool, message: String) {
    if password.count < 8 {
        return (false, "Password too short")
    } else if username.isEmpty {
        return (false, "Username required")
    } else {
        return (true, "Login successful")
    }
}

let result1 = validateLogin(username: "Ralph", password: "123")
print(result1.message)

let result2 = validateLogin(username: "", password: "12345678")
print(result2.message)

let result3 = validateLogin(username: "Ralph", password: "12345678")
print(result3.message)
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


func subject(_ subs: [String]) -> String {
    
} 
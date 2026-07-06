func greetRecallient()  {
    print("Welcome to Recallient!")
    
}
greetRecallient()


func studentName(name: String) {
    print("Welcome, \(name)")
    
}
studentName(name: "Ralph!")



func addingNumbers(a:Int , b:Int) -> Int {
    return a + b

}
let result = addingNumbers(a:100,b:90)
print("Remaining balance: \(result)") 




func greets(name: String = "Guest!") {
    print("Welcome, \(name)")
    
}
greets()
greets(name: "Ralph")



func subject(_ name: String) {
    print("Reviewing: \(name)")
    
}
subject("Swift Programming 1")  


func grades(_ scores: [Int]) -> (min:Int, max:Int) {
    return (scores.min()!, scores.max()!)

}
let grade = grades([88, 74, 95, 61, 82])
print(grade.min)
print(grade.max)


func evaluateScore(subject: String, score: Int) {
    if score >= 90 {
        print("\(subject): Excellent")
    } else if score >= 75 && score <= 89 {
        print("\(subject): Passed")
    } else {
        print("\(subject): Needs improvement")
    }
}

evaluateScore(subject: "Math", score: 95) 
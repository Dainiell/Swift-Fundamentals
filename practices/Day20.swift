func forwards(s1:String,s2:String) -> Bool {
    return s1 > s2
}
let letters = ["H","E","L","L","O"]
print(letters)

let sorted = letters.sorted(by: forwards)
print(sorted)


func applyOperation(number: Int,operation:(Int) -> Int) -> Int {
    return operation(number)
}
print(applyOperation(number: 5) {$0 * 3})    






var isCorrectAnswer = { (userAnswer: String, correctAnswer: String) -> Bool in
    return userAnswer == correctAnswer 
    
}
print(isCorrectAnswer("Manila","Manila"))



var doubleNumber = { (number: Int) -> Int in 
    return number * 2
} 
print(doubleNumber(5))


func annouceResult(score:Int,handler:(String) -> Void) {
    let message = score >= 80 ? "Great Job!" : "Keep Practicing"
    handler(message)
}
annouceResult(score: 85) { message in 
    print(message)
}
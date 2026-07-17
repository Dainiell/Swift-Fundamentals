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


func annouceResult(score:Int,handler:(String) -> Void) {
    let message = score >= 80 ? "Great Job!" : "Keep Practicing"
    handler(message)
}
annouceResult(score: 85) { message in 
    print(message)
}


var isCorrectAnswer = { (userAnswer: String, correctAnswer: String) -> Bool in
    return userAnswer == correctAnswer 
    
}
print(isCorrectAnswer("Manila","Manila"))



var doubleNumber = { (number: Int) -> Int in 
    return number * 2
} 
print(doubleNumber(5))



let greet = { (greetings:String) -> String in 
    return greetings
}
print(greet("Good night Mr.Ralph"))


func ageCheck (age:Int, msg: (String) -> Void) -> Void {
    let ageMsg = "Your age is passed!"
    msg(ageMsg)

    
}
ageCheck(age: 85) { ageMsg in 
    print(ageMsg)

}


let paidCheck = { (amount: Int, isPaid: Bool, status:(String) -> Void) in 
    let checker = isPaid ? "Your Paid" : "Please update your payment"
    status(checker)

}
paidCheck(225,true) { message in 
    print(message)
}

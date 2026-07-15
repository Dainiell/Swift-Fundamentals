var doubleNumber = { (number: Int) -> Int in 
    return number * 2
} 
print(doubleNumber(5))


func applyOperation(number: Int,operation:(Int) -> Int) -> Int {
    return operation(number)
}
print(applyOperation(number: 5) {$0 * 3})    



var isCorrectAnswer = { (userAnswer: String, correctAnswer: String) -> Bool in
    return userAnswer == correctAnswer 
    
}
print(isCorrectAnswer("Manila","Manila"))



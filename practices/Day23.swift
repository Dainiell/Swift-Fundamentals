struct quizCards {
    var question: Int
    var answer: String 
    var hint: String? 
    var timesReviewed: Int
    
    var isMastered: Bool {
        return timesReviewed >= 5
    }

    mutating func addTimes() {
        timesReviewed += 1
    }
   
}
var cards: [quizCards] = [
    quizCards(question: 1, answer:"Tokyo", hint:"Toks", timesReviewed:7),
    quizCards(question: 2, answer:"Hello World", hint:"Hello", timesReviewed:2),
    quizCards(question: 3, answer:"BGC", hint:nil, timesReviewed:1),
    quizCards(question: 4, answer:"Taguig", hint:"Tags", timesReviewed:3),
    quizCards(question: 5, answer:"Manila", hint:"The Main", timesReviewed:5)
]
func showHint(for card: quizCards) {
    guard let hint = card.hint else {
        print("No Hint!")
        return
    }
    print("Hint: \(hint)")
}
func reviewSession(cards: [quizCards], onReview: (Int, Bool) -> Void) {
    for card in cards {
        onReview(card.question, card.isMastered)
    }
}   
reviewSession(cards:cards) { question,mastered in 
    print("\(question): \(mastered ? "Mastered!" : "Needs review")")
}

let masterCard = cards.filter { $0.isMastered }
print(masterCard.count)


cards[0].addTimes()
print(cards[0].timesReviewed)

let questions = cards.map { $0.answer }
print(questions)

let biza = cards.filter {$0.isMastered}.map {$0.question}
print(biza)





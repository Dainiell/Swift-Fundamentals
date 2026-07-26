enum DeckLevel {
    case beginner,intermediate,advanced
}

struct FlashCard {
    var question: String 
    var level: DeckLevel
    var review: Int 
    var master: Bool 

    var masteryLabel: String {
        if master == true {
            return "Mastered"
        }else {
            return "Still Learning"
        }
    }
    mutating func reviews() {
        review += 1
    }
} 

var flash: [FlashCard] = [ 
    FlashCard(question: "1 + 2", level: .beginner, review: 2, master: true),
    FlashCard(question: "7 + 2", level: .intermediate, review: 3, master: false),
    FlashCard(question: "9 + 2", level: .intermediate, review: 1, master: true),
    FlashCard(question: "10 + 2", level: .advanced, review: 4, master: true)
] 

let masters = flash.filter { mastereds in 
    mastereds.master == true
}
print(masters)

let counttime = flash.reduce(0) { num, times in 
    num + (times.review)
}
print(counttime)


func checkCards(cards:[FlashCard], onCheck:(DeckLevel, Bool) -> Void) {
    for card in cards {
        onCheck(card.level , card.master)
    }
}
checkCards(cards: flash) { level, master in 
    print("\(level): \(master ? "Mastered" : "Still Learning")")
}
flash[0].reviews()
flash[0].reviews()
print(flash[0].review)

enum Difficulty {
    case easy
    case medium
    case hard 
}

extension Difficulty  {
    var pointValue: Int {
        switch self {
            case .easy: return 1 
            case .medium: return 2
            case .hard: return 3
        }
    }  
}    
    

struct studyCard {
    var subject: String
    var diff: Difficulty 
    var timesReview: Int

    var format: String {
        return "\(subject) , \(diff) , \(timesReview) , \(isMastered)"
    }
    var isMastered: Bool {
        return timesReview >= 5
    }
}



var cards: [studyCard] = [
    studyCard(subject:"Swift Programming" , diff: .medium , timesReview: 3),
    studyCard(subject:"Database" , diff: .easy , timesReview: 1),
    studyCard(subject:"Intro to API" , diff: .hard , timesReview: 5)

]
print(cards[0].format)

func totalPoints(cards: [studyCard]) -> Int {
    return cards.reduce(0) {$0 + $1.diff.pointValue}
}

let total = totalPoints(cards: cards)
print(total)
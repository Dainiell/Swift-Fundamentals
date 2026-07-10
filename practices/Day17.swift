func Users(name: String, account: String, budget: Int) {
    print("\(name) has a \(account) account with a ₱\(budget) monthly budget.")
    
}
Users(name:"Ralph", account:"Maribank",budget: 187000)


func spending(name: String,amount: Int) {
    switch amount {
        case 5000...: print("\(name) is Overspending")
        case 2000...4999:print("\(name) is Moderate spend")
        case 500...1999: print("\(name) is Controlled spend")
        default : print("\(name) is Minimal spend")
    }
}
spending(name: "Banana" , amount: 420)


func totalAvg(avg: [Int]) -> (total: Int , average: Int) {
    var total = 0
    for number in avg {
        total += number
    }
    let average = total / avg.count
    return (total, average)
}
let avgg = totalAvg(avg: [1200, 3500, 800, 6000, 450])
print("Total: \(avgg.total), Average: \(avgg.average)")


func highLowest(expenses: [String: Int]) -> (highCategory: String, highAmount: Int, lowCategory: String, lowAmount: Int) {
    var highCategory = ""
    var highAmount = Int.min
    var lowCategory = ""
    var lowAmount = Int.max

    for (category, amount) in expenses {
        if amount > highAmount {
            highAmount = amount
            highCategory = category
        }
        if amount < lowAmount {
            lowAmount = amount
            lowCategory = category
        }
    }

    return (highCategory, highAmount, lowCategory, lowAmount)
}
let breakdown = highLowest(expenses: ["Rent": 8000, "Food": 3500, "Transport": 300, "Utilities": 1200])
print("Highest: \(breakdown.highCategory) (\(breakdown.highAmount)), Lowest: \(breakdown.lowCategory) (\(breakdown.lowAmount))")



let saveNote: () -> Void = {
    print("Note saved!")
}
saveNote()

let noteTitle: (String) -> Void = { (title: String) in 
    print("New note: \(title)")
        
}
noteTitle("School Essentials")

let wordCounter: (Int,Int) -> Int =  {a,b in 
    return a + b
    
}
let total = wordCounter(50, 100)
print("Total words: \(total)")


let noteSize: (Int) -> String = { length in
    if length >= 100 {
        return "Long note"
    } else if length >= 30 {
        return "Medium note"
    } else {
        return "Short note"
    }
}

print(noteSize(120))  
print(noteSize(48))    
print(noteSize(15))    

func checkReceipt(number: String?) {
    guard let number = number else {
        print("No receipt attached")
        return
    }
    print("Receipt: \(number)")
}

checkReceipt(number: nil)
checkReceipt(number: "OR-88213")


func securityLock(pin: String , balance: Int) -> (valid: Bool , message: String) {
    if pin.count < 4 {
        return (false,"PIN too short")  
    }
    if balance < 0 || balance < 10 {
        return (false, "Insufficient balance")
        
    } 
    return (true, "Account valid")
        
}
let test1 = securityLock(pin: "0831", balance: 6)
print(test1.message)


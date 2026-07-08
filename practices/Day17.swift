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
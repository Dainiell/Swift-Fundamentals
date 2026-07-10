func profile(name: String,breed: String,age:Int) {
    print("\(name) is a \(age)-year-old \(breed).")
    
}
profile(name: "Milo" , breed:"Corgi" ,age:2) 
 



func weightCalcu(names:String , weight:Int) {
    switch weight {
        case 30... :print("\(names): Overweight")
        case 15...29: print("\(names): Healthy weight")
        case 5...14: print("\(names): Light")
        default: print("\(names): Very light, monitor closely")
    }
    
}
weightCalcu(names: "Milo" , weight: 23)


func AvgCalcu(money: [Int]) -> (total:Int,average:Int) {
    var total = 0 
    for avg in money {
        total += avg
    }
    let totals = total / money.count
    return (total,totals)
}
let range = AvgCalcu(money:[1500, 2200, 1800, 2500, 1900])
print("Total: \(range.total) , \(range.average)")


func heavyCalcu(pets: [String: Int]) -> (heaviestName: String, heaviestWeight: Int, lightestName: String, lightestWeight: Int) {
    var heaviestName = ""
    var heavyWeights = Int.min
    var lightName = ""
    var lightWeight = Int.max
    for (name,weight) in pets {
        if weight > heavyWeights {
            heavyWeights = weight
            heaviestName = name 
        }
        if weight < lightWeight {
            lightWeight = weight 
            lightName = name
        }
    }
    return (heaviestName, heavyWeights, lightName, lightWeight)
}   
let petWeight = heavyCalcu(pets: ["Milo": 23, "Mek-mek": 29, "Mochi": 19, "Michi": 25])
print("Heaviest: \(petWeight.heaviestName) (\(petWeight.heaviestWeight)), Lightest: \(petWeight.lightestName) (\(petWeight.lightestWeight))")


func appointment(name: String?) {
    guard let name = name else {
        print("No appointment scheduled")
        return
    }
    print("Next vet visit: \(name)")
}
appointment(name: "August 15")
appointment(name: nil)


func records(name: String, vaccines: Int) -> (complete: Bool,message: String) {
    if vaccines < 3 {
        return(false, "Incomplete — needs more vaccines")
    }
    if name == "" {
        return(false, "Pet name required")
    }
    return (true, "Vaccination complete")
}
let record1 = records(name: "Mek-mek", vaccines: 1)
print(record1.message)

let record2 = records(name: "", vaccines: 4)
print(record2.message)

let record3 = records(name: "", vaccines: 3)
print(record3.message)
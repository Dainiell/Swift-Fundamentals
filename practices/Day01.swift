let name = "Ralph"
let age = 20 
print("My name is \(name) and I am \(age) years old.")

let pi = 3.14 // This is inference 
let radius: Double = 5.0 // This is annotation
print("The value of pi is \(pi) and the radius is \(radius)")

let a = 12 
let b = 5 
print("A + B is \(a + b)")
print("A - B is \(a - b)")
print("A * B is \(a * b)")
print("A / B is \(a / b)")
print("A % B is \(a % b)")


let isRaining = true
let hasUmbrella = false

let willGetWet = isRaining && !hasUmbrella
print("Will get wet: \(willGetWet)")

let isSafeFromRain = !isRaining || hasUmbrella
print("Safe from rain: \(isSafeFromRain)")

var score = 100
score += 10 
print("\(score)")
score -= 20 
print("\(score)")
score *= 2
print("\(score)")

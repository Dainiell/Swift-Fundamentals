for rd in 1...5 
{
    print("Hello \(rd)")
    
}
// ----------------
let numberPlate = "WW87GP"
for character in numberPlate {
  print("character is = \(character)")
}


// ----------------
var turns = 1 

while turns <= 3 
{
    print("This is turn number \(turns)")
    turns += 1
}

// ----------------
var totalturns = 4
var leftturns = true 

while leftturns 
{
    totalturns -= 1 
    if totalturns < 1 {
        leftturns = false 
    }
    print("got another turn")
      
    
}
// ----------------
for dice in 1...6 {
    print("Roll a \(dice)")
    
}  


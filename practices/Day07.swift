var month = 1

while month < 5 {
    print("Month: \(month)")
    
    for i in 1...4 {
        if i == 2 {
            break
        }
        print("Count: \(i)")
        
    }
    month += 1

    print(" ")
    
}

//-----------------------------------------

let Levels = 10 
let freeLevels = 4
let bonusLevels = 3 

for Level in 1...Levels {
    if Level == bonusLevels {
        print("Skip bonus level is \(bonusLevels)")
            continue
    }
    print("Playing level \(Level)")

    if Level == freeLevels {
        print("You've played all \(freeLevels) free levels. Buy the full game to access \(bonusLevels) more levels!")
        break
        
    }
}





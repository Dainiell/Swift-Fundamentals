let levels = 10 
let freeLevels = 4
let bonusLevels = 3

for level in 1...levels {
    if level == bonusLevels {
        print("Skip the level \(bonusLevels)")
        continue
    }
    print("Play level \(levels)")
    if level == freeLevels {
        print("You have played all \(freeLevels) free levels. Buy the game to play the remaining \(levels - freeLevels) levels.")
        break
    }
    
}
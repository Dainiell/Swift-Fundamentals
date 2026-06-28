let levels = 10 
let freeLevels = 4
let bonusLevels = 3

for levels in 1...levels {
    if levels == bonusLevels {
        print("Skip the level \(bonusLevels)")
        continue
    }
    print("Play level \(levels)")
    if levels == freeLevels {
        print("You have played all \(freeLevels) free levels. Buy the game to play the remaining \(levels - freeLevels) levels.")
        break
    }
    
}
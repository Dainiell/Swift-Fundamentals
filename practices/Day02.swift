var levelScores: [Int] =  [] 

if levelScores.count == 0 {
    print("Welcome to the game!")
    print("Press start to play the game!")
    
    
}

let firstLevelScore = 10 
levelScores.append(firstLevelScore)
print("The first level's score is \(levelScores [0])")

let levelBonusScore = 40 

levelScores[0] += levelBonusScore
print("\(levelScores[0])")

let freeLevelScores: [Int] = [20,30] 
levelScores += freeLevelScores
print("\(levelScores)")

let freeLevels = 3

if levelScores.count == freeLevels {
    print("You have to buy the game in order to play its full version.") 
        levelScores =  [] 
    print("Game restarted!")
    
}
func calculateScore(correct:Int, total: Int) -> Double {
   return (Double(correct) / Double(total) * 100)
}

var score = calculateScore(correct: 8, total: 10)
print(score)





func averageScore(scores:[Double]) -> Double {
   var total = 0.0 
   for score in scores {
      total += score
   }
   let totals = total / Double(scores.count) 
   return totals
}
let scoreses = averageScore(scores:[80.0, 90.0, 70.0, 100.0]) 
print(scoreses)




func passOrFail(score:Double,passingGrade: Double = 75.0) -> String {
   return score >= passingGrade ? "Pass" : "Fail" 
}
var checkScore1 = passOrFail(score:80.0)
print(checkScore1) 

var checkScore2 = passOrFail(score:70.0, passingGrade: 90.0)
print(checkScore2)




func findHighLow(scores: [Double]) -> (highest:Double,lowest:Double) {
   var highest = -Double.infinity
   var lowest  = Double.infinity

   for score in scores {
      if score > highest {
         highest = score
      }
      if score < lowest {
         lowest = score
      }
   }
   return (highest,lowest)
}
let numbers = findHighLow(scores:[80.0, 90.0, 70.0, 100.0]) 
print("Highest: \(numbers.highest) Lowest: \(numbers.lowest)")
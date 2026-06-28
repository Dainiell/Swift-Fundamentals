for i in 1...10 {
    print(i)
    
}


let numbers = 5 

for number in 1...10 {
    print("\(number) x \(numbers) = \(number * numbers)")
    
}


for i in stride(from: 10, through: 1, by: -1) {
    print(i)
}


var count = 1

while count <= 5 {
   print(count)
   count += 1
   
}


var timer = 5

while timer >= 0 {
    print(timer)
    timer -= 1 
}
print("Times Up!")


for i in 1...40 where i % 7 == 4 {  
    print(i)
}


var number = 1


while number < 100 {
    number *= 2
    print(number)
    
}


let totalSteps = 6 

for Steps in 1...totalSteps  {
    print("Step \(Steps) of \(totalSteps) ")
    
}






for numb in stride(from: 2, through: 30, by: 2 ) {
    print(numb)
    
} 


var sum = 0
for five in stride(from: 5,through: 50 , by: 5) {
    sum += five 
}
print(sum)



let maxServings = 8

for Servings in 1...maxServings {
    print("Serving Size \(Servings)")
    
}



var minutesStudied = 0
let targetMinutes = 25


while minutesStudied < targetMinutes {
    minutesStudied += 5 
    print("Current Progress: \(minutesStudied) minutes")
}
 print("Session Complete!")


var ingredientStock = 20
let usagePerRecipe = 4


while ingredientStock > 0 {
    ingredientStock -= usagePerRecipe
    print("Current Stock: \(ingredientStock)")
    
   
    
}
 print("Stock depleted!")


 var streak = 1

 while streak < 50 {
    streak *= 2
    print("Your Current Streak is \(streak)")
    
 }
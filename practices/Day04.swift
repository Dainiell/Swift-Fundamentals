var weeklyTemperatures: [String: Int] = [:] 
weeklyTemperatures = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95]
weeklyTemperatures ["Monday"]! += 20 
print("The Temperature on Monday is \(weeklyTemperatures["Monday"]!)°F")

if let temperature = weeklyTemperatures["Sunday"] {
    print("Sunday: \(temperature)°F")
} else {
    weeklyTemperatures["Sunday"] = 100
    print("The temperature on Sunday is \(weeklyTemperatures["Sunday"]!)°F")
}

if weeklyTemperatures.count == 7 {
    print("This week's weather forecast is complete with all 7 days.")
    weeklyTemperatures = [:]
    print("The weekly temperatures dictionary has been reset for next week's forecast.")
}
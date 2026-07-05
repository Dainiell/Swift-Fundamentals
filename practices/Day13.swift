let credentials = ("",-1111) 

if credentials.0 == "" || credentials.1 < 0 {
    print("Invalid Credentials!")
    
}else {
    print("The username is \(credentials.0) and the passcode is \(credentials.1)")
    
}

let fullCredentials = (password:"pass",passcode:1111)

if fullCredentials.password == "" || fullCredentials.passcode < 0 {
    print("Invalid Crendetials!")
    
}else {
    print("The Password is \(fullCredentials.password) and the passcode is \(fullCredentials.passcode)")
    
}



var weeklyTemperatures: [String: Int] = [:]

weeklyTemperatures = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95] 
weeklyTemperatures ["Monday"]! += 20
print("The temperature on Monday is \(weeklyTemperatures["Monday"]!)°F.")

if let temperature = weeklyTemperatures["Sunday"] {
    print("The temperature on sunday is \(temperature)°F.")
    
}else {
    weeklyTemperatures["Sunday"] = 100 
    print("The temperature on Sunday is \(weeklyTemperatures["Sunday"]!)°F.")
    
}

let counts = weeklyTemperatures.count 
print(counts)

if counts == 7 {
    print("All the temperatures are complete")
    weeklyTemperatures = [:]
    print("Ready for next week's weather forecast.")
}else {
    print("Some temperatures are missing")
    
}



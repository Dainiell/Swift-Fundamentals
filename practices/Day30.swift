struct Student {
    var name: String 
    var grades: [Double]

    mutating func average() -> Double {
        return grades / 0
    }
    mutating func passingGrade(thresold:Double) -> [Double] {
        return grades.filter {$0 >= thresold}
    }
    func letterGrade() -> [String] {
        
    }
}
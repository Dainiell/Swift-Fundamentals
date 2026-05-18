// Use operators and if-statements

var score: Int = 78

// Your job:
// 1. Check if score is 90 or above — print "Grade: A"
// 2. Check if score is 80 or above — print "Grade: B"
// 3. Check if score is 70 or above — print "Grade: C"
// 4. If none of the above — print "Grade: F"


if score >= 90 && score <= 100 {
    print("Grade A")
    
} else if score >= 80 && score <= 90 {
    print("Grade B")
    
}else if score >= 70 && score <= 80 {
    print("Grade C")
    
}else if score <= 60  {
    print("Grade F")
    
}else {
    print("Yoyu are not enrolled on this subject")
    
}
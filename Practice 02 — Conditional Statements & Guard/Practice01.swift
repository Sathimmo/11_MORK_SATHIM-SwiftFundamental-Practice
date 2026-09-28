// Test Case 1 (Change to score: 45, attendance: 70, gpa: 2.1 to test the second case)
let score = 82
let attendance = 95
let gpa = 3.6

// TODO: set grade using if-else chain
var grade = ""
if score >= 90 {
    grade = "A"
} else if score >= 80 {
    grade = "B"
} else if score >= 70 {
    grade = "C"
} else if score >= 50 {
    grade = "D"
} else {
    grade = "F"
}

print("Score: \(score)")
print("Grade: \(grade)")

// TODO: Result
let result = score >= 50 ? "Pass" : "Fail"
print("Result: \(result)")

// TODO: Message (match on grade using switch statement)
var message = ""
switch grade {
case "A":
    message = "Excellent!"
case "B", "C":
    message = "Good work, keep going!"
case "D":
    message = "You passed. Aim higher next time."
default:
    message = "Please see your instructor."
}
print("Message: \(message)")

// TODO: Scholarship (eligible if GPA is 3.5+ and attendance is 90+)
let scholarship = (gpa >= 3.5 && attendance >= 90) ? "Eligible" : "Not eligible"
print("Scholarship: \(scholarship)")

// TODO: Warning (At risk if attendance is below 75 or score is below 50)
let warning = (attendance < 75 || score < 50) ? "At risk" : "None"
print("Warning: \(warning)")
import UIKit

struct Course {
    let code: String
    let title: String
    let capacity: Int
    var enrolledStudents: [String] = []
    
    var seatsLeft: Int {
        return capacity - enrolledStudents.count
    }
}

var courses = [
    "SWE101": Course(code: "SWE101", title: "Swift Fundamentals", capacity: 2),
    "UX110": Course(code: "UX110", title: "Intro to UX", capacity: 30)
]

@MainActor
func enroll(_ student: String, in code: String) {
    guard var course = courses[code] else {
        print("Rejected \(student): \(code) does not exist")
        return
    }
    
    if course.enrolledStudents.contains(student) {
        print("Skipped: \(student) is already enrolled")
        return
    }
    
    if course.enrolledStudents.count >= course.capacity {
        print("Rejected \(student): \(code) is full")
        return
    }
    
    course.enrolledStudents.append(student)
    courses[code] = course
    print("Enrolled \(student) in \(code)")
}

enroll("Dara", in: "SWE101")
enroll("Sok", in: "SWE101")
enroll("Dara", in: "SWE101")
enroll("Bopha", in: "SWE101")
enroll("Rithy", in: "CS999")

print()

if let swe101 = courses["SWE101"] {
    let sortedRoster = swe101.enrolledStudents.sorted().joined(separator: ", ")
    print("\(swe101.title): \(sortedRoster)")
    print("Seats left: \(swe101.seatsLeft)")
}

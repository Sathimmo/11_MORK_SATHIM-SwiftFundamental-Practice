struct Student {
    let name: String
    let email: String?
}

let dara = Student(name: "Dara", email: "dara@school.edu")
let sok = Student(name: "Sok", email: nil)

let students = [dara, sok]

for student in students {
    if let email = student.email {
        print("\(student.name): \(email)")
    } else {
        print("\(student.name): no email on file")
    }
}

print("Sok's contact: \(sok.email ?? "not provided")")

print("Dara's email length: \(dara.email?.count ?? 0)")

func sendReminder(to student: Student) {
    guard let email = student.email else {
        print("Cannot remind \(student.name): missing email.")
        return
    }
    print("Reminder sent to \(email).")
}

sendReminder(to: dara)
sendReminder(to: sok)
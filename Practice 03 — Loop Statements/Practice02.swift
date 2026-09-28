var totalMinutes = 0
var sessionCount = 0

// TODO: Keep adding sessions while the total is under 100
while totalMinutes < 100 {
    sessionCount += 1
    totalMinutes += 25
    print("Session \(sessionCount): \(totalMinutes) minutes")
}

print("Goal reached in \(sessionCount) sessions.")

// TODO: Count down 3..., 2..., 1... using a loop that runs at least once
var countdown = 3
repeat {
    print("\(countdown)...")
    countdown -= 1
} while countdown > 0

print("Break time!")
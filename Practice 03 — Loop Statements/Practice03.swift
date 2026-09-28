let scores = [78, 92, -5, 64, 101, 88, -1, 70]

var validCount = 0
var totalScore = 0

for score in scores {
    if score == -1 {
        print("End marker found. Stopping.")
        break
    }
    
    if score >= 0 && score <= 100 {
        print("\(score) accepted")
        validCount += 1
        totalScore += score
    } else {
        print("\(score) skipped (invalid)")
    }
}

print("Valid scores: \(validCount)")
print("Total: \(totalScore)")
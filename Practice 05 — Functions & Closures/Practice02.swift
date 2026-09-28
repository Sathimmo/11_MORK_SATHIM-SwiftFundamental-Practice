let scores = [72, 45, 90, 61, 38, 85]

let isPassing = { (score: Int) -> Bool in
    return score >= 50
}

let passingScores = scores.filter(isPassing)
print("Passing: \(passingScores)")

let bonusScores = scores.map { $0 + 5 }
print("Add 5 bonus points to every score: \(bonusScores)")

let sortedScores = scores.sorted { $0 > $1 }
print("Sort Highest first: \(sortedScores)")

let passingCount = scores.filter(isPassing).count
print("Passing count: \(passingCount)")
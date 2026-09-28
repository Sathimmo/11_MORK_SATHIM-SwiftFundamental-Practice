let score1 = 80
let score2 = 90
let score3 = 85

// TODO: total
let total = score1 + score2 + score3

// TODO: average as a decimal (cast total to Double to ensure decimal division)
let average: Double = Double(total) / 3.0

// TODO: average rounded down to a whole number
let roundedAverage = Int(average)

// TODO: label "Total: 255" built with +
let label = "Total: " + String(total)

// TODO: print everything
print("Total: \(total)")
print("Average: \(average)")
print("Rounded average: \(roundedAverage)")
print("Label -> \(label)")
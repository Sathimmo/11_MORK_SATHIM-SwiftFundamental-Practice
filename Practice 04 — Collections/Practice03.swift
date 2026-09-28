var gradeBook = ["Dara": 88, "Sok": 74]

gradeBook["Bopha"] = 91

gradeBook["Sok"] = 79

gradeBook.removeValue(forKey: "Dara")

print("Bopha: \(gradeBook["Bopha"] ?? 0)")
print("Rithy: \(gradeBook["Rithy"] ?? 0)")

print("Entries: \(gradeBook.count)")
for (name, score) in gradeBook {
    print("\(name) -> \(score)")
}
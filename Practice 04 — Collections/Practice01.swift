var roster = ["Dara", "Sok", "Bopha"]

roster.append("Rithy")

roster.insert("Vicheka", at: 0)

print("All Data: \(roster)")
print("Count: \(roster.count)")
print("First: \(roster[0])")

roster.remove(at: 2)
print("After removing: \(roster)")

let hasDara = roster.contains("Dara")
print("Has Dara: \(hasDara)")

let sortedRoster = roster.sorted()
print("Sorted: \(sortedRoster)")
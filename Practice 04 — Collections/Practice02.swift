var codingClub: Set<String> = ["Dara", "Sok", "Bopha"]
let mathClub: Set<String> = ["Sok", "Rithy", "Bopha"]

codingClub.insert("Dara")
print("Coding club size: \(codingClub.count)")

let bothClubs = codingClub.intersection(mathClub).sorted()
print("In both clubs: \(bothClubs)")

let allMembers = codingClub.union(mathClub).sorted()
print("All members: \(allMembers)")
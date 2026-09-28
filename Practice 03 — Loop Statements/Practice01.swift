for i in 1...10 {
    print("7 x \(i) = \(7 * i)")
}

print("") 

let topics = ["Variables", "Conditionals", "Loops", "Collections"]

for index in 0..<topics.count {
    print("\(index + 1). \(topics[index])")
}
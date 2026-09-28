func register(name: String, age: Int, hasPaid: Bool) {
    // TODO: check name
    guard name.count > 0 else {
        print("Error: Name is required.")
        return
    }
    
    // TODO: check age
    guard age >= 16 else {
        print("Error: \(name) is too young to register.")
        return
    }
    
    // TODO: check payment
    guard hasPaid else {
        print("Error: \(name) has not paid the fee.")
        return
    }
    
    // Success message is the last line, unnested
    print("\(name) is registered.")
}

register(name: "Dara", age: 20, hasPaid: true)
register(name: "Sok", age: 15, hasPaid: true)
register(name: "Vicheka", age: 19, hasPaid: false)
register(name: "", age: 22, hasPaid: true)
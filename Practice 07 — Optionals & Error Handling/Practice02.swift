enum ScoreError: Error {
    case notANumber(String)
    case negative(Int)
    case tooHigh(Int)
}

func parseScore(_ input: String) throws -> Int {
    guard let number = Int(input) else {
        throw ScoreError.notANumber(input)
    }
    guard number >= 0 else {
        throw ScoreError.negative(number)
    }
    guard number <= 100 else {
        throw ScoreError.tooHigh(number)
    }
    return number
}

let inputs = ["88", "-4", "120", "ninety"]

for input in inputs {
    do {
        let score = try parseScore(input)
        print("Saved score: \(score)")
    } catch ScoreError.notANumber(let value) {
        print("Error: \"\(value)\" is not a number.")
    } catch ScoreError.negative(let value) {
        print("Error: \(value) is negative.")
    } catch ScoreError.tooHigh(let value) {
        print("Error: \(value) is above 100.")
    } catch {
        print("Unknown error")
    }
}
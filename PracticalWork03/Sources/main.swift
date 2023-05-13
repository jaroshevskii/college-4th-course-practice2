//
// College 4th course: Practice 2
// Practical work 3
//

class Calculator {
  func add(_ x: Int, _ y: Int) -> Int { x + y }
  func add(_ x: Double, _ y: Double) -> Double { x + y }

  func subtract(_ x: Int, _ y: Int) -> Int { x - y }
  func subtract(_ x: Double, _ y: Double) -> Double { x - y }
}

let a = 5, b = 3
let c = 2.5, d = 1.5

let calculator = Calculator()

let sumInt = calculator.add(a, b)
print(sumInt) // Prints "8"

let sumDouble = calculator.add(c, d)
print(sumDouble) // Prints "4.0"

let diffInt = calculator.subtract(a, b)
print(diffInt) // Prints "2"

let diffDouble = calculator.subtract(c, d)
print(diffDouble) // Prints "1.0"

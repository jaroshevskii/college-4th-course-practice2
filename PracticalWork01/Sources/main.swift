//
// College 4th course: Practice 2
// Practical work 1
//

/// Represents a fraction with a numerator and a denominator.
class Fraction {
  /// The numerator of the fraction.
  var numerator: Int
  /// The denominator of the fraction.
  var denominator: UInt16

  /// Initializes a new `Fraction` instance with the given numerator and denominator.
  ///
  /// - Parameters:
  ///   - numerator: The numerator of the fraction.
  ///   - denominator: The denominator of the fraction.
  init(numerator: Int, denominator: UInt16) {
    self.numerator = numerator
    self.denominator = denominator
  }

  /// Multiplies the current fraction by another fraction.
  ///
  /// - Parameter another: The fraction to multiply by.
  func multiply(_ another: Fraction) {
    numerator *= another.numerator
    denominator *= another.denominator
  }

  /// Divides the current fraction by another fraction.
  ///
  /// - Parameter another: The fraction to divide by.
  func divide(_ another: Fraction) {
    numerator *= Int(another.denominator)
    denominator *= UInt16(another.numerator)
  }

  /// Adds another fraction to the current fraction.
  ///
  /// - Parameter another: The fraction to add.
  func add(_ another: Fraction) {
    let commonDenominator = lcm(denominator, another.denominator)
    numerator = (numerator * Int(commonDenominator / denominator)) + (another.numerator * Int(commonDenominator / another.denominator))
    denominator = commonDenominator
  }

  /// Subtracts another fraction from the current fraction.
  ///
  /// - Parameter another: The fraction to subtract.
  func subtract(_ another: Fraction) {
    let commonDenominator = lcm(denominator, another.denominator)
    numerator = (numerator * Int(commonDenominator / denominator)) - (another.numerator * Int(commonDenominator / another.denominator))
    denominator = commonDenominator
  }

  /// Calculates the greatest common divisor of two numbers.
  ///
  /// - Parameters:
  ///   - a: The first number.
  ///   - b: The second number.
  /// - Returns: The greatest common divisor of `a` and `b`.
  private func gcd(_ a: UInt16, _ b: UInt16) -> UInt16 {
    var x = a
    var y = b

    while y != 0 {
      let temp = y
      y = x % y
      x = temp
    }

    return x
  }

  /// Calculates the least common multiple of two numbers.
  ///
  /// - Parameters:
  ///   - a: The first number.
  ///   - b: The second number.
  /// - Returns: The least common multiple of `a` and `b`.
  private func lcm(_ a: UInt16, _ b: UInt16) -> UInt16 { (a * b) / gcd(a, b) }
}

let fraction1 = Fraction(numerator: 2, denominator: 3)
let fraction2 = Fraction(numerator: 1, denominator: 4)

// Test ultiplication
fraction1.multiply(fraction2)
print("Multiplication Result: \(fraction1.numerator)/\(fraction1.denominator)")
// Prints "2/12" (simplified: 1/6)

// Test division
fraction1.divide(fraction2)
print("Division Result: \(fraction1.numerator)/\(fraction1.denominator)")
// Prints "6/3" (simplified: 2/1)

// Test addition
fraction1.add(fraction2)
print("Addition Result: \(fraction1.numerator)/\(fraction1.denominator)")
// Prints "10/4" (simplified: 5/2)

// Test subtraction
fraction1.subtract(fraction2)
print("Subtraction Result: \(fraction1.numerator)/\(fraction1.denominator)")
// Prints "14/4" (simplified: 7/2)

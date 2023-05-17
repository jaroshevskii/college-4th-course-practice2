//
// College 4th course: Practice 2
// Practical work 4
//

/// Repeats the given function multiple times with the specified value.
///
/// - Parameters:
///   - function: The function to be repeated.
///   - value: The initial value to be passed to the function.
///   - count: The number of times the function should be repeated.
///
/// - Returns: The final result after repeating the function.
func repeatFunction<T>(_ function: (T) -> T, value: T, count: Int) -> T {
  var result = value
  for _ in 0..<count {
    result = function(result)
  }
  return result
}

/// Increments the given number by 1.
///
/// - Parameter number: The number to be incremented.
///
/// - Returns: The incremented number.
func increment(_ number: Int) -> Int { number + 1 }

let result = repeatFunction(increment, value: 10, count: 3)
print(result)
// Prints "13"

//
// College 4th course: Practice 2
// Practical work 4
//

import Foundation

class Function {
  func evaluate(_ x: Double) -> Double { x * x }
}

class Sampler {
  private var start, end, step: Double
  private var function: Function

  init?(function: inout Function) {
    guard let desktopURL = FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask).first else {
      return nil
    }
    let fileURL = desktopURL.appendingPathComponent("InputData.txt")
    guard let contents = try? String(contentsOfFile: fileURL.path, encoding: .utf8) else {
      return nil
    }
    let numbers = contents.filter { !$0.isWhitespace }.components(separatedBy: ",")
    guard numbers.count == 3 else {
      return nil
    }
    guard let start = Double(numbers[0]), let end = Double(numbers[1]), let step = Double(numbers[2]) else {
      print(numbers)
      return nil
    }

    self.start = start
    self.end = end
    self.step = step
    self.function = function
  }

  func sample() {
    var data = [(x: Double, y: Double)]()

    for x in stride(from: start, to: end, by: step) {
      let y = function.evaluate(x)
      data.append((x, y))
    }

    var xRow = "x"
    var yRow  = "y"
    for element in data {
      let x = String(element.x)
      let y = String(element.y)
      let maxWidth = max(x.count, y.count)
      xRow.append(" " + x.padding(toLength: maxWidth, withPad: " ", startingAt: 0))
      yRow.append(" " + y.padding(toLength: maxWidth, withPad: " ", startingAt: 0))
    }

    let outputData = xRow + "\n" + yRow
    print(outputData)

    do {
      let desktopURL = FileManager.default.urls(for: .desktopDirectory, in: .userDomainMask).first
      let fileURL = desktopURL?.appendingPathComponent("OutputData.txt")
      try outputData.write(to: fileURL!, atomically: true, encoding: .utf8)
    } catch {
      print("Opss!")
    }
  }
}

var function = Function()
if let sampler = Sampler(function: &function) {
  sampler.sample()
} else {
  print("Opps!")
}

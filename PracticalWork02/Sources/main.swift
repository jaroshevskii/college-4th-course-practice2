//
// College 4th course: Practice 2
// Practical work 2
//

class Product {
  private var name: String
  private var price: Double
  private var weight: Double

  init(name: String, price: Double, weight: Double) {
    self.name = name
    self.price = price
    self.weight = weight
  }

  func getName() -> String { name }
  func setName(newName: String) { name = newName }

  func getPrice() -> Double { price }
  func setPrice(newPrice: Double) { price = newPrice }

  func getWeight() -> Double { weight }
  func setWeight(newWeight: Double) { weight = newWeight }
}

class Buy: Product {
  private var count: Int

  init(name: String, price: Double, weight: Double, count: Int) {
    self.count = count
    super.init(name: name, price: price, weight: weight)
  }

  func getCount() -> Int { count }
  func setCount(newCount: Int) { count = newCount }
}

class Check: Buy {
  func print() {
    Swift.print("""
    Product:
      Name:   \(getName())
      Price:  \(getPrice())
      Weight: \(getWeight())

    Buy:
      Count: \(getCount())
    """)
  }
}

let pizza = Check(name: "Pizza", price: 15, weight: 25, count: 3)
pizza.print()

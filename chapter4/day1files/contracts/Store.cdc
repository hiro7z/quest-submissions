pub contract Store {

  pub resource Fruit {
    pub var name: String
    init() {
      self.name = "apple"
    }
  }

  pub fun createFruit(): @Fruit {
    return <- create Fruit()
  }
}
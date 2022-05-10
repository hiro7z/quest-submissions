pub contract Store {

  pub resource interface IFruit {
    pub var name: String
  }

  pub resource Fruit: IFruit {
    pub var name: String
    pub var price: Int

    pub fun changePrice(newPrice: Int) {
      self.price = newPrice
    }

    init() {
      self.name = "apple"
      self.price = 100
    }
  }

  pub fun createFruit(): @Fruit {
    return <- create Fruit()
  }

}
pub contract FruitStore {

  pub event NFTMinted(id: UInt64, name: String, price: UInt64)

  pub resource NFT {
    pub let id: UInt64
    pub var name: String
    pub var price: UInt64

    pub fun updateNFT(name: String, price: UInt64) {
      pre {
        price > 0: "Not updated. Enter an integer greater than 0."
      }
      post {
        before(self.name) != self.name: "Not updated. Enter another name."
        before(self.price) != self.price: "Not updated. Enter another price."
      }
      self.name = name
      self.price = price
    }

    init(_name: String, _price: UInt64) {
      self.id = self.uuid

      self.name = _name
      self.price = _price

      emit NFTMinted(id: self.id, name: self.name, price: self.price)
    }

  }

  pub fun createNFT(name: String, price: UInt64): @NFT {
    pre {
      price > 0: "Not created. Enter an integer greater than 0."
    }
    return <- create NFT(_name: name, _price: price)
  }

}
import FruitStore from 0x01

transaction() {

  prepare(signer: AuthAccount) {
    let fruit <- FruitStore.createNFT(name: "apple", price: 5)

    log(fruit.id)
    log(fruit.name)

    // error price > 0
    //fruit.updateNFT(name: "banana", price: 0)
    //log(fruit.name)

    // error same name
    //fruit.updateNFT(name: "apple", price: 10)
    //log(fruit.name)

    // error same price
    //fruit.updateNFT(name: "banana", price: 5)
    //log(fruit.name)

    // ok
    fruit.updateNFT(name: "peach", price: 20)
    log(fruit.name)

    destroy fruit
  }

}
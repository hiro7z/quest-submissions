import Store from 0x01

transaction() {
  prepare(signer: AuthAccount) {
    let newFruit <- Store.createFruit()
    signer.save(<- newFruit, to: /storage/MyFruitResource) 
    let fruit <- signer.load<@Store.Fruit>(from: /storage/MyFruitResource)
                          ?? panic("A `Store.Fruit` resource does not live here.")
    log(fruit.name)

    destroy fruit
  }

  execute {

  }
}
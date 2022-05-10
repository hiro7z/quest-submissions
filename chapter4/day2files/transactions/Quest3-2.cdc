import Store from 0x01

transaction(address: Address) {

  prepare(signer: AuthAccount) {

  }

  execute {
    let publicCapability: Capability<&Store.Fruit{Store.IFruit}> =
      getAccount(address).getCapability<&Store.Fruit{Store.IFruit}>(/public/MyTestResource)

    // This works...
    let testResource: &Store.Fruit{Store.IFruit} = publicCapability.borrow() ?? panic("The capability doesn't exist or you did not specify the right type when you got the capability.")

    // ERROR: "Member of restricted type is not accessible: changePric"
    testResource.changePrice(newPrice: 200)
  }
}
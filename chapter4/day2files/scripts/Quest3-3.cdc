import Store from 0x01

pub fun main(address: Address): String {
  let publicCapability: Capability<&Store.Fruit{Store.IFruit}> =
    getAccount(address).getCapability<&Store.Fruit{Store.IFruit}>(/public/MyTestResource)

  let testResource: &Store.Fruit{Store.IFruit} = publicCapability.borrow() ?? panic("The capability doesn't exist or you did not specify the right type when you got the capability.")

  // This works because `name` is in `&Store.Fruit{Store.IFruit}`
  return testResource.name
}
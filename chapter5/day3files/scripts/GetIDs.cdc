import CryptoPoops from 0x01
pub fun main(address: Address): [UInt64] {
  let publicCollection = getAccount(address).getCapability(/public/MyCollection)
              .borrow<&CryptoPoops.Collection{CryptoPoops.PoopCollectionPublic}>()
              ?? panic("The address does not have a Collection.")
  
  return publicCollection.getIDs()
}
import CryptoPoops from 0x01
pub fun main(address: Address, id: UInt64) {
  let publicCollection = getAccount(address).getCapability(/public/MyCollection)
              .borrow<&CryptoPoops.Collection{CryptoPoops.CollectionPublic}>()
              ?? panic("The address does not have a Collection.")
  
  let nftRef: &CryptoPoops.NFT = publicCollection.borrowNFT(id: id) // ERROR: "Member of restricted type is not accessible: borrowNFT"
  log(nftRef.name)
  log(nftRef.favouriteFood)
  log(nftRef.luckyNumber)
}
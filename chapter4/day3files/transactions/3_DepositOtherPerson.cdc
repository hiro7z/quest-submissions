import CryptoPoops from 0x01
transaction(recipient: Address) {

  prepare(otherPerson: AuthAccount) {
    // Get a reference to the `recipient`s public Collection
    let recipientsCollection = getAccount(recipient).getCapability(/public/MyCollection)
                                  .borrow<&CryptoPoops.Collection{CryptoPoops.CollectionPublic}>()
                                  ?? panic("The recipient does not have a Collection.")
    
    // deposits an `NFT` to our Collection
    recipientsCollection.deposit(token: <- CryptoPoops.createNFT())
  }

}
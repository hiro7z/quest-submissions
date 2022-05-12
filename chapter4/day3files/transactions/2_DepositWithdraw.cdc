import CryptoPoops from 0x01
transaction() {
  prepare(signer: AuthAccount) {
    // Get a reference to our `CryptoPoops.Collection`
    let collection = signer.borrow<&CryptoPoops.Collection>(from: /storage/MyCollection)
                      ?? panic("The recipient does not have a Collection.")
    
    // deposits an `NFT` to our Collection
//    collection.deposit(token: <- CryptoPoops.createNFT())

    log(collection.getIDs()) // [2353]

    // withdraw the `NFT` from our Collection
//    let nft <- collection.withdraw(withdrawID: 2) // We get this number from the ids array above
  
//    log(collection.getIDs()) // []

//    destroy nft
  }
}
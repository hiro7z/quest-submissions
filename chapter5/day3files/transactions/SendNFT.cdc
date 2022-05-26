import CryptoPoops from 0x01
transaction(id: UInt64, recipient: Address) {

  prepare(signer: AuthAccount) {
    let signersCollection = signer.borrow<&CryptoPoops.Collection>(from: /storage/MyCollection)
                            ?? panic("Signer does not have a CryptoPoops Collection")

    let recipientsCollection = getAccount(recipient).getCapability(/public/MyCollection)
                                  .borrow<&CryptoPoops.Collection{CryptoPoops.PoopCollectionPublic}>()
                                  ?? panic("The recipient does not have a CryptoPoops Collection.")
    
    let nft <- signersCollection.withdraw(withdrawID: id)

    // deposits the NFT into the recipient's Collection
    recipientsCollection.deposit(token: <- nft)
  }
}
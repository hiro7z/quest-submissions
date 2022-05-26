import CryptoPoops from 0x01

transaction() {
  prepare(signer: AuthAccount) {
    signer.save(<- CryptoPoops.createEmptyCollection(), to: /storage/MyCollection)
    
    signer.link<&CryptoPoops.Collection{CryptoPoops.PoopCollectionPublic}>(/public/MyCollection, target: /storage/MyCollection)
  }
}
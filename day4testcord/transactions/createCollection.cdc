import CryptoPoops from 0x01
transaction() {
  prepare(signer: AuthAccount) {
    // Store a `CryptoPoops.Collection` in our account storage.
    signer.save(<- CryptoPoops.createEmptyCollection(), to: /storage/MyCollection)
    
    // NOTE: We expose `&CryptoPoops.Collection{CryptoPoops.CollectionPublic}`, which 
    // only contains `deposit` and `getIDs`.
    signer.link<&CryptoPoops.Collection{CryptoPoops.CollectionPublic}>(/public/MyCollection, target: /storage/MyCollection)
  }
}
import CryptoPoops from 0x01
transaction(name: String, favouriteFood: String, luckyNumber: Int) {
    prepare(signer: AuthAccount) {
        let minter = signer.borrow<&CryptoPoops.Minter>(from: /storage/Minter) ?? panic("This signer is not the one who deployed the contract.")

        let signersCollection = signer.borrow<&CryptoPoops.Collection>(from: /storage/MyCollection)
                            ?? panic("Signer does not have a CryptoPoops Collection")

        let nft <- minter.createNFT(name: name, favouriteFood: favouriteFood, luckyNumber: luckyNumber)

        signersCollection.deposit(token: <- nft)
    }
}
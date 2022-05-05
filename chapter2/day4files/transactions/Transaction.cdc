import MarketPlace from 0x01

transaction(id: UInt64, name: String, price: UInt64, rarity: String) {

    prepare(signer: AuthAccount) {}

    execute {
        MarketPlace.addItem(id: id, name: name, price: price, rarity: rarity)
        log("We're done.")
    }

}
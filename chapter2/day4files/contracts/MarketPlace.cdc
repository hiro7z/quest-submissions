pub contract MarketPlace {

    pub var items: {UInt64: Item}

    pub struct Item {
        pub let id: UInt64
        pub let name: String
        pub let price: UInt64
        pub let rarity: String

        init(_id: UInt64, _name: String, _price: UInt64, _rarity: String) {
            self.id = _id
            self.name = _name
            self.price = _price
            self.rarity = _rarity
        }
    }

    pub fun addItem(id: UInt64, name: String, price: UInt64, rarity: String) {
        let newItem = Item(_id: id, _name: name, _price: price, _rarity: rarity)
        self.items[id] = newItem
    }

    init() {
        self.items = {}
    }
}
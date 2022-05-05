pub contract FruitStore {

    pub var dictionaryOfFruit: @{UInt64: Fruit}

    pub resource Fruit {
        pub let name: String
        init(_name: String) {
            self.name = _name
        }
    }

    pub fun getReference(key: UInt64): &Fruit {
        return &self.dictionaryOfFruit[key] as &Fruit
    }

    init() {
        self.dictionaryOfFruit <- {
            1: <- create Fruit(_name: "apple"), 
            2: <- create Fruit(_name: "banana")
        }
    }
}
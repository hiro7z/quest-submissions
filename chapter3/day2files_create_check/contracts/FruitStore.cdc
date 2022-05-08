pub contract FruitStore {

    pub var arrayOfFruit: @[Fruit]
    pub var dictionaryOfFruit: @{String: Fruit}

    pub resource Fruit {
        pub let name: String
        init(name: String) {
            self.name = name
        }
    }

    pub fun createFruit(name: String): @Fruit {
        let fruit <- create Fruit(name: name)
        return <- fruit
    }

    pub fun getReference(index: Int): &Fruit {
        return &self.arrayOfFruit[index] as &Fruit
    }

    pub fun addFruitToArray(fruit: @Fruit) {
        self.arrayOfFruit.append(<- fruit)
    }

    pub fun removeFruitFromArray(index: Int): @Fruit {
        return <- self.arrayOfFruit.remove(at: index)
    }

    pub fun addFruitToDictionary(fruit: @Fruit) {
        let key = fruit.name
        let oldFruit <- self.dictionaryOfFruit[key] <- fruit
        destroy oldFruit
    }

    pub fun removeFruitFromDictionary(key: String): @Fruit {
        let fruit <- self.dictionaryOfFruit.remove(key: key) ?? panic("Could not find the fruit!")
        return <- fruit
    }

    init() {
        self.arrayOfFruit <- []
        self.dictionaryOfFruit <- {}
    }

}
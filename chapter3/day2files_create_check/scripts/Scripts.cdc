import FruitStore from 0x01

pub fun main() {
    var fruit <- FruitStore.createFruit(name: "apple")
    FruitStore.addFruitToArray(fruit: <- fruit)

    let ref = FruitStore.getReference(index: 0)
    log(ref.name)
}
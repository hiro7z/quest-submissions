import FruitStore from 0x01

pub fun main(): String {
    let ref = FruitStore.getReference(key: 1)
    return ref.name
}

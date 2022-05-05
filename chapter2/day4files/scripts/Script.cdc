import MarketPlace from 0x01

pub fun main(id: UInt64): MarketPlace.Item {
    return MarketPlace.items[id]!
}
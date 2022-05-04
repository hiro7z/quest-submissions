pub fun main() {
    var names: {String: String} = {"Jacob": "Tucker", "Bob": "Vance", "Ochako": "Unaraka"}
    log(names["Jacob"])
    log(names["Bob"])
    log(names["Ochako"])

    var favouriteNums: {String: Int} = {"Jacob": 13, "Bob": 0, "Ochako": 1000100103}
    log(favouriteNums["Jacob"])

    favouriteNums.insert(key: "Justin Bieber", 1)
    log(favouriteNums)

    favouriteNums = {"Jacob": 13, "Bob": 0, "Ochako": 1000100103}
    let removedNumber = favouriteNums.remove(key: "Jacob")
    log(favouriteNums)
    log(removedNumber)

    favouriteNums = {"Jacob": 13, "Bob": 0, "Ochako": 1000100103}
    log(favouriteNums.keys)
    log(favouriteNums.values)
}
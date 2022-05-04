pub fun main() {
  var jacob:String = "isCool"

  var people: [String] = ["Jacob", "Alice", "Damian"]

  var addresses: [Address] = [0x1, 0x2, 0x3]
  log(addresses[0])
  log(addresses[1])
  log(addresses[2])

  people.append("Ochako Unaraka")
  log(people)

  people = ["Jacob", "Alice", "Damian"]

  log(people.contains("Jacob"))
  log(people.contains("Poop"))

  people.remove(at: 1)
  log(people)

  people = ["Jacob", "Alice", "Damian"]

  log(people.length)

}
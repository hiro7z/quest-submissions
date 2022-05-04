pub fun main(): String {
  let thing: {Address: String} = {0x01: "One", 0x02: "Two", 0x03: "Three"}
  return thing[0x03]! // force-unwrap String? to String
}
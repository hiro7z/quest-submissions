pub contract Order {

    pub resource interface IItem {
      pub var name: String
    }

    pub resource Item: IItem {
      pub var name: String
      pub var quantity: Int

      init() {
        self.name = "apple"
        self.quantity = 1
      }
    }

    pub fun noInterface() {
      let item: @Item <- create Item()
      log(item.quantity)

      destroy item
    }

    pub fun yesInterface() {
      let item: @Item{IItem} <- create Item()
      log(item.quantity) // ERROR: `member of restricted type is not accessible: quantity`

      destroy item
    }
}
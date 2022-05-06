pub contract Stuff {

    pub struct interface ITest {
      pub var greeting: String
      pub var favouriteFruit: String
      pub fun changeGreeting(newGreeting: String): String // Add function
    }

    pub struct Test: ITest {
      pub var greeting: String
      pub var favouriteFruit: String // Add favouriteFruit

      pub fun changeGreeting(newGreeting: String): String {
        self.greeting = newGreeting
        return self.greeting
      }

      init() {
        self.greeting = "Hello!"
        self.favouriteFruit = "apple" // init favouriteFruit
      }
    }

    pub fun fixThis() {
      let test: Test{ITest} = Test()
      let newGreeting = test.changeGreeting(newGreeting: "Bonjour!")
      log(newGreeting)
    }
}
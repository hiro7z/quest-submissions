import HelloWorld from 0x01

transaction(myNewGreeting: String) {
    prepare(signer: AuthAccount) {}

    execute {
      HelloWorld.changeGreeting(newGreeting: myNewGreeting)
    }
}
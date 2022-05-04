import HelloWorld from 0x01

transaction(myNewNumber: Int) {
    prepare(signer: AuthAccount) {}

    execute {
      HelloWorld.updateMyNumber(newNumber: myNewNumber)
    }
}
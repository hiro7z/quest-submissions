import Store from 0x01
transaction() {
  prepare(signer: AuthAccount) {
    // Save the resource to account storage
    signer.save(<- Store.createFruit(), to: /storage/MyTestResource)

    // See what I did here? I only linked `&Stuff.Test{Stuff.ITest}`, NOT `&Stuff.Test`.
    // Now the public only has access to the things in `Stuff.ITest`.
    signer.link<&Store.Fruit{Store.IFruit}>(/public/MyTestResource, target: /storage/MyTestResource)
  }

  execute {

  }
}
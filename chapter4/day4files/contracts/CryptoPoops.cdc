pub contract CryptoPoops {
  pub var totalSupply: UInt64

  // This is an NFT resource that contains a name,
  // favouriteFood, and luckyNumber
  pub resource NFT {
    pub let id: UInt64

    pub let name: String
    pub let favouriteFood: String
    pub let luckyNumber: Int

    // Initialize ID and metadata
    init(_name: String, _favouriteFood: String, _luckyNumber: Int) {
      self.id = self.uuid

      self.name = _name
      self.favouriteFood = _favouriteFood
      self.luckyNumber = _luckyNumber
    }
  }

  // This is a resource interface to allow others to use.
  pub resource interface CollectionPublic {
    pub fun deposit(token: @NFT)
    pub fun getIDs(): [UInt64]
    pub fun borrowNFT(id: UInt64): &NFT
  }

  // The resource collection is implemented with the functions of deposit,
  // withdraw, get ID, and borrowing NFTs for the resource NFT defined in this contract.
  pub resource Collection: CollectionPublic {
    pub var ownedNFTs: @{UInt64: NFT}

    // Deposit NFT
    pub fun deposit(token: @NFT) {
      self.ownedNFTs[token.id] <-! token
    }

    // Withdraws the NFT of the specified ID
    pub fun withdraw(withdrawID: UInt64): @NFT {
      let nft <- self.ownedNFTs.remove(key: withdrawID) 
              ?? panic("This NFT does not exist in this Collection.")
      return <- nft
    }

    // Get owned NFT IDs
    pub fun getIDs(): [UInt64] {
      return self.ownedNFTs.keys
    }

    // Borrow NFT. Return NFT reference
    pub fun borrowNFT(id: UInt64): &NFT {
      return &self.ownedNFTs[id] as &NFT
    }

    // Initialize owned NFTs
    init() {
      self.ownedNFTs <- {}
    }

    // Destroy owned NFTs
    destroy() {
      destroy self.ownedNFTs
    }
  }

  // Create collection
  pub fun createEmptyCollection(): @Collection {
    return <- create Collection()
  }

  // This resource minter allows only the account
  // that deployed the contract to mint the NFT.
  pub resource Minter {

    // Create NFT with metadata
    pub fun createNFT(name: String, favouriteFood: String, luckyNumber: Int): @NFT {
      return <- create NFT(_name: name, _favouriteFood: favouriteFood, _luckyNumber: luckyNumber)
    }

    // Create a minter when deploying a contract
    pub fun createMinter(): @Minter {
      return <- create Minter()
    }

  }

  // Initialize when deploying this contract.
  // minter is created.
  init() {
    self.totalSupply = 0
    self.account.save(<- create Minter(), to: /storage/Minter)
  }
}
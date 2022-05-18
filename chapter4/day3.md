#### 1.Why did we add a Collection to this contract? List the two main reasons.

1. To make it easier to understand the ID to be placed when issuing another NFT on the same contract

2. To allow other users besides the account owner to make deposits

---
#### 2.What do you have to do if you have resources "nested" inside of another resource? ("Nested resources")

Nested resources must also be destroyed in destroy()

---
#### 3.Brainstorm some extra things we may want to add to this contract. Think about what might be problematic with this contract and how we could fix it.


#### Idea #1: Do we really want everyone to be able to mint an NFT? 🤔.

No, you may want to limit who can mint the NFT. In that case, use the resource interface to limit who can mint.

#### Idea #2: If we want to read information about our NFTs inside our Collection, right now we have to take it out of the Collection to do so. Is this good?

No, you can use references to read the resource without moving it.


 -> At day3, I did not have a specific image, but at day4, I could understand the specific implementation using Minter and borrowNFT.

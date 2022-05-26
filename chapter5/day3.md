#### 1.What does "force casting" with as! do? Why is it useful in our Collection?

The "force cast" downcasts the generic type to a specific type.<br/>

All NFTs on Flow implement the NonFungibleToken interface, so anyone can deposit a collection.<br/>
By downcasting, you can limit the number of NFTs that can be deposited to only their own NFT type.

---
#### 2.What does auth do? When do we use it?

By using "auth", you can obtain the "authorized reference" needed to downcast a reference.

For example, if you implement the NonFungibleToken interface, the only field exposed will be the id.<br/>
To make the NFT metadata readable, a reference is obtained, but the reference must be downcast using "auth".

---
#### 3.This last quest will be your most difficult yet. Take this contract:

<b>and add a function called borrowAuthNFT just like we did in the section called "The Problem" above. Then, find a way to make it publically accessible to other people so they can read our NFT's metadata. Then, run a script to display the NFTs metadata for a certain id.</b>
<b>You will have to write all the transactions to set up the accounts, mint the NFTs, and then the scripts to read the NFT's metadata. We have done most of this in the chapters up to this point, so you can look for help there :)</b>


- add a function called borrowAuthNFT

![q3_1](https://user-images.githubusercontent.com/104469719/170519796-a3b6c1b6-6c0e-404b-8be0-e64b1712bae2.PNG)


Check the code below for details.

https://github.com/hiro7z/quest-submissions/blob/main/chapter5/day3files/contracts/CryptoPoops.cdc

- find a way to make it publically accessible to other people so they can read our NFT's metadata

![q3_2](https://user-images.githubusercontent.com/104469719/170519819-22ee1e6a-75b2-4a99-908c-26d905986a60.PNG)

- run a script to display the NFTs metadata for a certain id

![q3_3](https://user-images.githubusercontent.com/104469719/170519837-580c0c95-5ec3-41dc-816b-2cfdc01900af.PNG)

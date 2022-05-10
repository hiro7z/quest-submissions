#### 1.What does .link() do?
Make fields in the account owner's resources readable to non-account owners.

---
#### 2.In your own words (no code), explain how we can use resource interfaces to only expose certain things to the /public/ path.
Define variables to be exposed to the /public/ path in the resource interface of the contract, 
and those not to be exposed should be defined only in the implementation part.

---
#### 3.Deploy a contract that contains a resource that implements a resource interface. Then, do the following:

- contract

![q03](https://user-images.githubusercontent.com/104469719/167651203-f616c92f-5b48-4ded-8257-920337eac2af.PNG)

#### i.In a transaction, save the resource to storage and link it to the public with the restrictive interface.

![q03-1](https://user-images.githubusercontent.com/104469719/167651253-d725f324-91fe-4968-b64b-3997bf6f5379.PNG)

#### ii.Run a script that tries to access a non-exposed field in the resource interface, and see the error pop up.

![q03-2](https://user-images.githubusercontent.com/104469719/167651274-fdc9ae6e-5fe2-4f99-8e7d-3dab970cf3b9.PNG)

#### iii.Run the script and access something you CAN read from. Return it from the script.

![q03-3](https://user-images.githubusercontent.com/104469719/167651283-cca1da7b-a9a3-41e8-924a-f93691ac33d9.PNG)

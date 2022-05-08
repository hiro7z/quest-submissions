#### 1.Explain what lives inside of an account.

- Contract Code
- Account Storage

---
#### 2.What is the difference between the /storage/, /public/, and /private/ paths?

- /storage/
  - only the account owner can access this
- /public/
  - available to everybody
- /private/
  - available only to the account owner and those to whom the owner has granted access

---
#### 3.What does .save() do? What does .load() do? What does .borrow() do?

- .save()
  - save data to a specified path in account storage 
- .load()
  - take out data that exists in the specified path of the account storage
- .borrow()
  - get a reference without taking data out of account storage


---
#### 4.Explain why we couldn't save something to our account storage inside of a script.

Because access to the data in the account requires a signature, which is done in the prepare part of the transaction.

---
#### 5.Explain why I couldn't save something to your account.

Since you need my signature to access the data in my account.

---
#### 6.Define a contract that returns a resource that has at least 1 field in it. Then, write 2 transactions:

![q06contract](https://user-images.githubusercontent.com/104469719/167290077-ba774968-dea4-47eb-a39e-073a4214e81d.PNG)

#### i. A transaction that first saves the resource to account storage, then loads it out of account storage, logs a field inside the resource, and destroys it.

![q06tx1](https://user-images.githubusercontent.com/104469719/167290079-67a222c4-171b-420b-b40b-df020dfcab0b.PNG)

#### ii. A transaction that first saves the resource to account storage, then borrows a reference to it, and logs a field inside the resource.

![q06tx2](https://user-images.githubusercontent.com/104469719/167290082-66dd15f6-91da-463e-a1c8-57a1c549ca05.PNG)

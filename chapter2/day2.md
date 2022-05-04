### 1.Explain why we wouldn't call changeGreeting in a script.
Because the script does not modify the data on the blockchain.

---
### 2.What does the AuthAccount mean in the prepare phase of the transaction?
Access to approved user's data will be available.

---
### 3.What is the difference between the prepare phase and the execute phase in the transaction?
Data of the approved account is accessible in the prepare phase, but not in the execute phase.

---
### 4.This is the hardest quest so far, so if it takes you some time, do not worry! I can help you in the Discord if you have questions.

- Add two new things inside your contract:
  - A variable named myNumber that has type Int (set it to 0 when the contract is deployed)
  - A function named updateMyNumber that takes in a new number named newNumber as a parameter that has type Int and updates myNumber to be newNumber

![q01](https://user-images.githubusercontent.com/104469719/166631110-423e0f34-e8af-4512-9c0e-48541cfdc2d9.PNG)

- Add a script that reads myNumber from the contract

GetMyNumber is implemented.

![q02](https://user-images.githubusercontent.com/104469719/166631142-c64fa3bc-8f3f-4847-b72e-9203187865d3.PNG)

- Add a transaction that takes in a parameter named myNewNumber and passes it into the updateMyNumber function. Verify that your number changed by running the script again.

UpdateMyNumber is implemented.

![q03-1](https://user-images.githubusercontent.com/104469719/166631150-0f14a83a-4573-4bc6-96e6-a3b7df43ef03.PNG)

I ran the script GetMyNumber to verify that myNumber has changed.

![q03-2](https://user-images.githubusercontent.com/104469719/166631159-6e89beca-4810-4a79-ac80-58e01f3dde49.PNG)

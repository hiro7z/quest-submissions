### 1.In words, list 3 reasons why structs are different from resources.
- They cannot be copied
- They cannot be lost (or overwritten)
- They cannot be created whenever you want

---
### 2.Describe a situation where a resource might be better to use than a struct.
Suitable when you want to pass on very expensive or very important NFTs.

You can develop it safely because you will not lose any resources unless you explicitly destroy it.

---
### 3.What is the keyword to make a new resource?
"create"

---
### 4.Can a resource be created in a script or transaction (assuming there isn't a public function to create one)?
Cannot be created.

The reason is that the "create" keyword can only be used inside a contract.

---
### 5.What is the type of the resource below?
"@Jacob"

---
### 6.Let's play the "I Spy" game from when we were kids. I Spy 4 things wrong with this code. Please fix them.

- line11
  - "Jacob" to "@Jacob"
- line12
  - "=" to "<-"
  - add "create"
- line13
  - add "<-" before "myJacob"

![q06](https://user-images.githubusercontent.com/104469719/166875125-e3239941-6c56-464e-9d44-174dd7630741.PNG)


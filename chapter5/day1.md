#### 1.Describe what an event is, and why it might be useful to a client.

Event is a way to tell what happened in a smart contract.

No more constantly checking the contract's totalSupply to find out, for example, that an NFT has been minted.

---
#### 2.Deploy a contract with an event in it, and emit the event somewhere else in the contract indicating that it happened.

![q02](https://user-images.githubusercontent.com/104469719/169636460-497e6bbb-e9ad-44cf-8f17-8a6612a2c098.PNG)

---
#### 3.Using the contract in step 2), add some pre conditions and post conditions to your contract to get used to writing them out.

Check the code below.

https://github.com/hiro7z/quest-submissions/blob/main/chapter5/day1files/contracts/FruitStore.cdc

---
#### 4.For each of the functions below (numberOne, numberTwo, numberThree), follow the instructions.

- numberOne

```
Tell me whether or not this function will log the name.<br>
name: 'Jacob'
```
The length of "Jacob" is 5, so the log is output.

- numberTwo

```
Tell me whether or not this function will return a value.
name: 'Jacob'
```
Since the length of "Jacob" is greater than or equal to 0, the log is output.

- numberThree

```
Tell me whether or not this function will log the updated number.
Also, tell me the value of `self.number` after it's run.
```

Not logged.<br/>
In the expression in post.<br/>
before(self.number) on the left side is 0, and<br/>
"result" on the right side is 1, which adds up to 2, and they do not match.

The value of `self.number` after execution remains 0.


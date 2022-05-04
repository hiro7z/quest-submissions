### 1.In a script, initialize an array (that has length == 3) of your favourite people, represented as Strings, and log it.
![q01](https://user-images.githubusercontent.com/104469719/166693736-61650916-d0c9-40e6-b0a0-6791466e2b1f.PNG)

---
### 2.In a script, initialize a dictionary that maps the Strings Facebook, Instagram, Twitter, YouTube, Reddit, and LinkedIn to a UInt64 that represents the order in which you use them from most to least. For example, YouTube --> 1, Reddit --> 2, etc. If you've never used one before, map it to 0!
![q02](https://user-images.githubusercontent.com/104469719/166693750-2c98638b-4b72-4c86-b762-298cc1867b7d.PNG)

---
### 3.Explain what the force unwrap operator ! does, with an example different from the one I showed you (you can just change the type).
Unwrap optional type.

In the case below, "Int?" is unwrapped to "Int".

![q03](https://user-images.githubusercontent.com/104469719/166696567-cd994877-2c2c-4aee-928c-e4375f9f9c60.PNG)

---
### 4.Using this picture below, explain...

  - What the error message means

The assumed type is "String" and the actual type "String?" (optional type) is mismatched.

  - Why we're getting this error

Because the type assumed as the return value of the function and the type actually returned are different.

  - How to fix it

Give the force-unwrap operator "!" to the return value. on the return value.

Unwraps from "String?" to "String" and the types match.

![q04](https://user-images.githubusercontent.com/104469719/166699699-f2e6886f-e1aa-4823-ae9b-14c6c7e77ee4.PNG)

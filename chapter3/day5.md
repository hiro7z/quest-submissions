#### You will be looking at 4 variables (a, b, c, d) and 3 functions (publicFunc, contractFunc, privateFunc) defined in SomeContract. 
#### In each AREA (1, 2, 3, and 4), I want you to do the following: 
#### for each variable (a, b, c, and d), tell me in which areas they can be read (read scope) and which areas they can be modified (write scope). 
#### For each function (publicFunc, contractFunc, and privateFunc), simply tell me where they can be called.

- variable
  - a
    - read  ：1, 2, 3, 4
    - write ：1, 2, 3, 4
  - b
    - read  ：1, 2, 3, 4
    - write ：1
  - c
    - read  ：1, 2, 3
    - write ：1
  - d
    - read  ：1
    - write ：1

- function
  - publicFunc
    - callable  ：1, 2, 3, 4
  - contractFunc
    - callable  ：1, 2, 3
  - privateFunc
    - callable  ：1

---
- AREA1

![qarea1](https://user-images.githubusercontent.com/104469719/167129670-ed278233-c17b-40e1-9123-12b9a736acb0.PNG)


- AREA2

![qarea2](https://user-images.githubusercontent.com/104469719/167129675-331a8162-b9db-405f-bf14-aca25f2978e4.PNG)


- AREA3

![qarea3](https://user-images.githubusercontent.com/104469719/167129683-58d9540f-1a2c-4801-a36d-c931ad3b2519.PNG)


- AREA4

![qarea4](https://user-images.githubusercontent.com/104469719/167129692-2e31f0b6-6ace-4278-93d7-6401614fd67f.PNG)


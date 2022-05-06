import SomeContract from 0x01

pub fun main() {
  /**************/
  /*** AREA 4 ***/
  /**************/

  // read variable
  let variableA = SomeContract.testStruct.a
  let variableB = SomeContract.testStruct.b
  // let variableC = SomeContract.testStruct.c // Can't read
  // let variableD = SomeContract.testStruct.d // Can't read

  // write variable
  SomeContract.testStruct.a = "A"
  // SomeContract.testStruct.b = "B" // Can't write
  // SomeContract.testStruct.c = "C" // Can't write
  // SomeContract.testStruct.d = "D" // Can't write

  // call function
  SomeContract.testStruct.publicFunc()
  // SomeContract.testStruct.contractFunc() // Can't call
  //SomeContract.testStruct.privateFunc() // Can't call
}
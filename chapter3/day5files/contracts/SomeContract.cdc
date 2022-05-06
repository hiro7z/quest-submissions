access(all) contract SomeContract {
    pub var testStruct: SomeStruct

    pub struct SomeStruct {

        //
        // 4 Variables
        //

        pub(set) var a: String

        pub var b: String

        access(contract) var c: String

        access(self) var d: String

        //
        // 3 Functions
        //

        pub fun publicFunc() {}

        access(contract) fun contractFunc() {}

        access(self) fun privateFunc() {}


        pub fun structFunc() {
            /**************/
            /*** AREA 1 ***/
            /**************/

            // read variable
            let variableA = self.a
            let variableB = self.b
            let variableC = self.c
            let variableD = self.d

            // write variable
            self.a = "A"
            self.b = "B"
            self.c = "C"
            self.d = "D"

            // call function
            self.publicFunc()
            self.contractFunc()
            self.privateFunc()
        }

        init() {
            self.a = "a"
            self.b = "b"
            self.c = "c"
            self.d = "d"
        }
    }

    pub resource SomeResource {
        pub var e: Int

        pub fun resourceFunc() {
            /**************/
            /*** AREA 2 ***/
            /**************/

            // read variable
            let variableA = SomeContract.testStruct.a
            let variableB = SomeContract.testStruct.b
            let variableC = SomeContract.testStruct.c
            // let variableD = SomeContract.testStruct.d // Can't read

            // write variable
            SomeContract.testStruct.a = "A"
            // SomeContract.testStruct.b = "B" // Can't write
            // SomeContract.testStruct.c = "C" // Can't write
            // SomeContract.testStruct.d = "D" // Can't write

            // call function
            SomeContract.testStruct.publicFunc()
            SomeContract.testStruct.contractFunc()
            // SomeContract.testStruct.privateFunc() // Can't call
        }

        init() {
            self.e = 17
        }
    }

    pub fun createSomeResource(): @SomeResource {
        return <- create SomeResource()
    }

    pub fun questsAreFun() {
        /**************/
        /*** AREA 3 ****/
        /**************/

        // read variable
        let variableA = self.testStruct.a
        let variableB = self.testStruct.b
        let variableC = self.testStruct.c
        // let variableD = self.testStruct.d // Can't read

        // write variable
        self.testStruct.a = "A"
        // self.testStruct.b = "B" // Can't write
        // self.testStruct.c = "C" // Can't write
        // self.testStruct.d = "D" // Can't write

        // call function
        SomeContract.testStruct.publicFunc()
        SomeContract.testStruct.contractFunc()
        // SomeContract.testStruct.privateFunc() // Can't call
    }

    init() {
        self.testStruct = SomeStruct()
    }
}
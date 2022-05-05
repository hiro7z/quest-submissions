pub contract Test {

    pub var dictionaryOfGreetings: @{String: Greeting}

    pub resource Greeting {
        pub let language: String
        init(_language: String) {
            self.language = _language
        }
    }

    pub fun getReference(key: String): &Greeting {
        return &self.dictionaryOfGreetings[key] as &Greeting
    }

    init() {
        self.dictionaryOfGreetings <- {
            "Hello!": <- create Greeting(_language: "English"), 
            "Bonjour!": <- create Greeting(_language: "French")
        }
    }
}
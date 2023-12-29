// Struct == blueprint
struct Town {
    // properties
    let name: String
    var citizens: [String]
    var resources: [String : Int]
    
    // initializer
    init(name: String, citizens: [String] , resources: [String : Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    // method
    func fortify(){
        print("defences increased!")
    }
}

// init
var anotherTown = Town(name: "nameless Island" ,citizens: ["Tom Hanks"] ,resources: ["Coconuts": 100])

print(anotherTown.citizens)



class Materials {
    var woods: [String] 

    init(woods:[String]) {
        self.woods = woods
    }
}


var toolBox1 = Materials(woods: ["FlyWood", "LShapeWood"])
var toolBox2 = Materials(woods: ["SomeWood"])

toolBox2.woods = ["OctagonWood"]

print(toolBox2.woods) 
import Vapor

struct Listing: Content {
    var title: String
    var price: String
}

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in        
        return "Hello, world!"
    }
    
    router.get("listing") { req in
        return Listing(title: "511 Church St", price: "$20")
    }

    // Example of configuring a controller
    let todoController = TodoController()    
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}

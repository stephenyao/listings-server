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

    let listingsController = ListingsController()
    router.get("listings", use: listingsController.index)
}

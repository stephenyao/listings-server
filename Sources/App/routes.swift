import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
  // Basic "It works" example
  router.get { req in
    return try req.view().render("index.html")
  }

  let listingsController = ListingsController()
  router.get("listings", use: listingsController.index)
}

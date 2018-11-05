import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
  // Basic "It works" example
  router.get { _ in
    return "It works!"
  }

  let listingsController = ListingsController()
  router.get("listings", use: listingsController.index)
}

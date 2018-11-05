//
//  ListingsController.swift
//  App
//
//  Created by Stephen Yao on 26/10/18.
//

import Vapor

final class ListingsController {
  func index(_ req: Request) throws -> [Listing] {
    guard let queryString: String? = req.query["suburb"], queryString != nil else {
      return Listing.all()
    }

    guard let suburb = Suburb(rawValue: queryString!) else {
      return []
    }

    switch suburb {
    case .richmond:
      return Listing.richmond()
    case .pointCook:
      return Listing.pointCook()
    case .glenWaverly:
      return Listing.glenWaverly()
    }
  }
}

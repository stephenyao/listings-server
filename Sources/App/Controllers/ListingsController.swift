//
//  ListingsController.swift
//  App
//
//  Created by Stephen Yao on 26/10/18.
//

import Vapor

final class ListingsController {
  func index(_ req: Request) throws -> ListingsResponse {
    guard let queryString: String? = req.query["suburb"], queryString != nil else {
      return ListingsResponse.default
    }

    guard let suburb = Suburb(rawValue: queryString!) else {
      return ListingsResponse.init(listings: [])
    }

    switch suburb {
    case .richmond:
      return ListingsResponse.init(listings: Listing.richmond())
    case .pointCook:
      return ListingsResponse.init(listings: Listing.pointCook())
    case .glenWaverly:
      return ListingsResponse.init(listings: Listing.glenWaverly())
    }
  }
}

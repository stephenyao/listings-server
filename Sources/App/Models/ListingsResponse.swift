//
//  ListingsResponse.swift
//  App
//
//  Created by Stephen Yao on 28/10/18.
//

import Vapor

struct ListingsResponse: Content {
  let listings: [Listing]

  static let `default` = ListingsResponse(listings: Listing.all().shuffled())
}

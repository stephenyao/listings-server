//
//  ListingsController.swift
//  App
//
//  Created by Stephen Yao on 26/10/18.
//

import Vapor

final class ListingsController {
    func index(_ req: Request) throws -> ListingsResponse {
        return ListingsResponse.default
    }
}

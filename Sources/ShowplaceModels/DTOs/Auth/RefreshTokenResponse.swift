//
//  RefreshTokenResponse.swift
//
//
//  Created by Kevin Barnes on 5/23/24.
//

import Vapor

public struct RefreshTokenResponse: Content {
    
    public var accessToken: String
    
    public init(accessToken: String) {
        self.accessToken = accessToken
    }
}

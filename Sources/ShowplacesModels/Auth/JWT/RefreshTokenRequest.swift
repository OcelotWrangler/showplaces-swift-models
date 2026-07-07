//
//  RefreshTokenRequest.swift
//
//
//  Created by Kevin Barnes on 5/23/24.
//

import Vapor

public struct RefreshTokenRequest: Content {
    
    public var refreshToken: UUID
    
    public init(refreshToken: UUID) {
        self.refreshToken = refreshToken
    }
}

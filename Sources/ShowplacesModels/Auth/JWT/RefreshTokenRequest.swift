//
//  RefreshTokenRequest.swift
//
//
//  Created by Kevin Barnes on 5/23/24.
//

import Foundation

public struct RefreshTokenRequest: Codable, Sendable {
    
    public var refreshToken: UUID
    
    public init(refreshToken: UUID) {
        self.refreshToken = refreshToken
    }
}

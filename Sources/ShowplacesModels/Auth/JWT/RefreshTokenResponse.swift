//
//  RefreshTokenResponse.swift
//
//
//  Created by Kevin Barnes on 5/23/24.
//

import Foundation

public struct RefreshTokenResponse: Codable, Sendable {
    
    public var accessToken: String
    
    public init(accessToken: String) {
        self.accessToken = accessToken
    }
}

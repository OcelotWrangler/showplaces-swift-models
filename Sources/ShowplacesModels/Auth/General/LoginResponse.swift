//
//  LoginResponse.swift
//
//
//  Created by Kevin Barnes on 5/23/24.
//

import Vapor

public struct LoginResponse: Content {
    
    public var accessToken: String
    public var refreshToken: UUID
    
    public init(accessToken: String, refreshToken: UUID) {
        self.accessToken = accessToken
        self.refreshToken = refreshToken
    }
}

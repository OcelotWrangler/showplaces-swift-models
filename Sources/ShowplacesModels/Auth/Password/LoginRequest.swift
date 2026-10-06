//
//  LoginRequest.swift
//
//
//  Created by Kevin Barnes on 5/23/24.
//

import Foundation

/// Password sign-in (`POST /auth/login`). Retired: kept only for TestFlight builds from before email
/// codes, and removed once they expire. See `showplaces-accounts.md`, "Passwords Are Retired".
public struct LoginRequest: Codable, Sendable {
    
    public var username: String
    public var password: String
    public var deviceId: UUID
    
    public init(username: String, password: String, deviceId: UUID) {
        self.username = username
        self.password = password
        self.deviceId = deviceId
    }
}

//
//  LoginResponse.swift
//
//
//  Created by Kevin Barnes on 5/23/24.
//

import Foundation

public struct LoginResponse: Codable, Sendable {
    
    public var accessToken: String
    public var refreshToken: UUID
    /// The signed-in account, so the client needn't fetch it straight after.
    public var user: UserDTO
    /// True when this sign-in created the account, which is when the app asks for a name and photo.
    public var isNewAccount: Bool
    
    public init(accessToken: String, refreshToken: UUID, user: UserDTO, isNewAccount: Bool = false) {
        self.accessToken = accessToken
        self.refreshToken = refreshToken
        self.user = user
        self.isNewAccount = isNewAccount
    }
}

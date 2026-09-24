//
//  SignInWithAppleRequest.swift
//  ShowplacesModels
//
//  Created by Kevin Barnes on 11/29/24.
//

import Foundation

public struct SignInWithAppleRequest: Codable, Sendable {
    
    public var identityToken: String
    public var deviceId: UUID
    
    public init(
        identityToken: String,
        deviceId: UUID
    ) {
        self.identityToken = identityToken
        self.deviceId = deviceId
    }
}

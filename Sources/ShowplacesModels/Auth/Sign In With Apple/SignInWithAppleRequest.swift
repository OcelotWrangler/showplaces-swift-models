//
//  SignInWithAppleRequest.swift
//  ShowplacesModels
//
//  Created by Kevin Barnes on 11/29/24.
//

import Vapor

public struct SignInWithAppleRequest: Content {
    
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

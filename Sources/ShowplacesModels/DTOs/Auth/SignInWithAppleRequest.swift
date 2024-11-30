//
//  SignInWithAppleRequest.swift
//  ShowplacesModels
//
//  Created by Kevin Barnes on 11/29/24.
//

import Vapor

public struct SignInWithAppleRequest: Content {
    
    public var identityToken: String
    
    public init(identityToken: String) {
        self.identityToken = identityToken
    }
}

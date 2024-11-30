//
//  SignUpWithAppleRequest.swift
//  ShowplacesModels
//
//  Created by Kevin Barnes on 11/29/24.
//

import Vapor

public struct SignUpWithAppleRequest: Content {
    
    public var identityToken: String
    public var email: String
    public var firstName: String?
    public var lastName: String?
    
    public init(
        identityToken: String,
        email: String,
        firstName: String? = nil,
        lastName: String? = nil
    ) {
        self.identityToken = identityToken
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
    }
}

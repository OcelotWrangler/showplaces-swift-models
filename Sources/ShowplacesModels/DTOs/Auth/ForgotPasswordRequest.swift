//
//  ForgotPasswordRequest.swift
//
//
//  Created by Kevin Barnes on 5/24/24.
//

import Vapor

public struct ForgotPasswordRequest: Content {
    
    public var email: String
    
    public init(email: String) {
        self.email = email
    }
}

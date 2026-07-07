//
//  ForgotPasswordResponse.swift
//
//
//  Created by Kevin Barnes on 5/24/24.
//

import Vapor

public struct ForgotPasswordResponse: Content {
    
    public var emailSent: Bool
    
    public init(emailSent: Bool) {
        self.emailSent = emailSent
    }
}

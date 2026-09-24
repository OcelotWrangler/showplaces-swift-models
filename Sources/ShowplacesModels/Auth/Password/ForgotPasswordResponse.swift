//
//  ForgotPasswordResponse.swift
//
//
//  Created by Kevin Barnes on 5/24/24.
//

import Foundation

public struct ForgotPasswordResponse: Codable, Sendable {
    
    public var emailSent: Bool
    
    public init(emailSent: Bool) {
        self.emailSent = emailSent
    }
}

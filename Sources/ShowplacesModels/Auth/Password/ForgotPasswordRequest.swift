//
//  ForgotPasswordRequest.swift
//
//
//  Created by Kevin Barnes on 5/24/24.
//

import Foundation

public struct ForgotPasswordRequest: Codable, Sendable {
    
    public var email: String
    
    public init(email: String) {
        self.email = email
    }
}

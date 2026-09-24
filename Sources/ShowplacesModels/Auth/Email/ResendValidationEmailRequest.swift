//
//  ResendValidationEmailRequest.swift
//
//
//  Created by Kevin Barnes on 5/28/24.
//

import Foundation

public struct ResendValidationEmailRequest: Codable, Sendable {
    
    public var email: String
    
    public init(email: String) {
        self.email = email
    }
}

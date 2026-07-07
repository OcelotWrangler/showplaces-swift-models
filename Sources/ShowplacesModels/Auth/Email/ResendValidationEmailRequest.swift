//
//  ResendValidationEmailRequest.swift
//
//
//  Created by Kevin Barnes on 5/28/24.
//

import Vapor

public struct ResendValidationEmailRequest: Content {
    
    public var email: String
    
    public init(email: String) {
        self.email = email
    }
}

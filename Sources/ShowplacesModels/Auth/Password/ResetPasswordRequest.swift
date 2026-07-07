//
//  ResetPasswordRequest.swift
//
//
//  Created by Kevin Barnes on 5/24/24.
//

import Vapor

public struct ResetPasswordRequest: Content {
    
    public var code: UUID
    public var password: String
    
    public init(code: UUID, password: String) {
        self.code = code
        self.password = password
    }
}

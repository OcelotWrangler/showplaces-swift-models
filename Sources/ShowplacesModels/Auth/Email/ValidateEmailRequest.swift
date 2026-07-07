//
//  ValidateEmailRequest.swift
//
//
//  Created by Kevin Barnes on 5/24/24.
//

import Vapor

public struct ValidateEmailRequest: Content {
    
    public var code: UUID
    
    public init(code: UUID) {
        self.code = code
    }
}

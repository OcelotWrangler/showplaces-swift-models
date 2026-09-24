//
//  ValidateEmailRequest.swift
//
//
//  Created by Kevin Barnes on 5/24/24.
//

import Foundation

public struct ValidateEmailRequest: Codable, Sendable {
    
    public var code: UUID
    
    public init(code: UUID) {
        self.code = code
    }
}

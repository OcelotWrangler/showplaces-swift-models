//
//  ResetPasswordResponse.swift
//
//
//  Created by Kevin Barnes on 5/24/24.
//

import Foundation

public struct ResetPasswordResponse: Codable, Sendable {
    
    public var reset: Bool
    
    public init(reset: Bool) {
        self.reset = reset
    }
}

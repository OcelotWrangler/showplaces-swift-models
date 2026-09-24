//
//  ValidateEmailResponse.swift
//
//
//  Created by Kevin Barnes on 5/24/24.
//

import Foundation

public struct ValidateEmailResponse: Codable, Sendable {
    
    public var validated: Bool
    
    public init(validated: Bool) {
        self.validated = validated
    }
}

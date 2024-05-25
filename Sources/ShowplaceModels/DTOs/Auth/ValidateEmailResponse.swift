//
//  ValidateEmailResponse.swift
//
//
//  Created by Kevin Barnes on 5/24/24.
//

import Vapor

public struct ValidateEmailResponse: Content {
    
    public var validated: Bool
    
    public init(validated: Bool) {
        self.validated = validated
    }
}

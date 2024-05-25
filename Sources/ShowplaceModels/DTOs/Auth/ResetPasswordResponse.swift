//
//  ResetPasswordResponse.swift
//
//
//  Created by Kevin Barnes on 5/24/24.
//

import Vapor

public struct ResetPasswordResponse: Content {
    
    public var reset: Bool
    
    public init(reset: Bool) {
        self.reset = reset
    }
}

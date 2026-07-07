//
//  ResendValidationEmailResponse.swift
//  
//
//  Created by Kevin Barnes on 5/28/24.
//

import Vapor

public struct ResendValidationEmailResponse: Content {
    
    public var sent: Bool
    
    public init(sent: Bool) {
        self.sent = sent
    }
}

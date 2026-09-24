//
//  ResendValidationEmailResponse.swift
//  
//
//  Created by Kevin Barnes on 5/28/24.
//

import Foundation

public struct ResendValidationEmailResponse: Codable, Sendable {
    
    public var sent: Bool
    
    public init(sent: Bool) {
        self.sent = sent
    }
}

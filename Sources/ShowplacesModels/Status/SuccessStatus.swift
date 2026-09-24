//
//  SuccessStatus.swift
//
//
//  Created by Kevin Barnes on 8/9/24.
//

import Foundation

public struct SuccessStatus: Codable, Sendable {
    
    public var success: Bool
    
    public init(success: Bool) {
        self.success = success
    }
}

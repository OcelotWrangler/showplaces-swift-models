//
//  SuccessStatus.swift
//
//
//  Created by Kevin Barnes on 8/9/24.
//

import Vapor

public struct SuccessStatus: Content {
    
    public var success: Bool
    
    public init(success: Bool) {
        self.success = success
    }
}

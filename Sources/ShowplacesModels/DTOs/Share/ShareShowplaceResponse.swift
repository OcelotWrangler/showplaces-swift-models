//
//  ShareShowplaceResponse.swift
//
//
//  Created by Kevin Barnes on 8/8/24.
//

import Vapor

public struct ShareShowplaceResponse: Content {
    
    public var shareId: UUID
    
    public init(shareId: UUID) {
        self.shareId = shareId
    }
}

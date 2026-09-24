//
//  ShareShowplaceResponse.swift
//
//
//  Created by Kevin Barnes on 8/8/24.
//

import Foundation

public struct ShareShowplaceResponse: Codable, Sendable {
    
    public var shareId: UUID
    
    public init(shareId: UUID) {
        self.shareId = shareId
    }
}

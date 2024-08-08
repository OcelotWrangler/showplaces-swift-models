//
//  ShareShowplaceRequest.swift
//  
//
//  Created by Kevin Barnes on 8/8/24.
//

import Vapor

public struct ShareShowplaceRequest: Content {
    
    public var userId: UUID?
    public var showplaceId: UUID
    public var accessLevel: AccessLevel
    
    public init(
        userId: UUID? = nil,
        showplaceId: UUID,
        accessLevel: AccessLevel
    ) {
        self.userId = userId
        self.showplaceId = showplaceId
        self.accessLevel = accessLevel
    }
}

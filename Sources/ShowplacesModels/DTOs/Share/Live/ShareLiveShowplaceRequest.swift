//
//  ShareLiveShowplaceRequest.swift
//  ShowplacesModels
//
//  Created by Kevin Barnes on 10/31/24.
//

import Vapor

public struct ShareLiveShowplaceRequest: Content {
    
    public var showplaceId: UUID
    public var accessLevel: AccessLevel
    public var maxUses: Int?
    public var expiration: Date?
    
    public init(
        showplaceId: UUID,
        accessLevel: AccessLevel,
        maxUses: Int? = nil,
        expiration: Date? = nil
    ) {
        self.showplaceId = showplaceId
        self.accessLevel = accessLevel
        self.maxUses = maxUses
        self.expiration = expiration
    }
}

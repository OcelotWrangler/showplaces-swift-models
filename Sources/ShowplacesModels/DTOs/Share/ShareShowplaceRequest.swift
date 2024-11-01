//
//  ShareShowplaceRequest.swift
//  ShowplacesModels
//
//  Created by Kevin Barnes on 10/31/24.
//

import Vapor

public struct ShareShowplaceRequest: Content {
    
    public var showplaceId: UUID
    public var shareType: ShareType
    public var accessLevel: AccessLevel
    public var maxUses: Int?
    public var expiration: Date?
    
    public init(
        showplaceId: UUID,
        shareType: ShareType,
        accessLevel: AccessLevel,
        maxUses: Int? = nil,
        expiration: Date? = nil
    ) {
        self.showplaceId = showplaceId
        self.shareType = shareType
        self.accessLevel = accessLevel
        self.maxUses = maxUses
        self.expiration = expiration
    }
}

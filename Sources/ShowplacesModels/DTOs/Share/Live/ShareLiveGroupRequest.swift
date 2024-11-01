//
//  ShareLiveGroupRequest.swift
//  ShowplacesModels
//
//  Created by Kevin Barnes on 10/31/24.
//

import Vapor

public struct ShareLiveGroupRequest: Content {
    
    public var groupId: UUID
    public var accessLevel: AccessLevel
    public var maxUses: Int?
    public var expiration: Date?
    
    public init(
        groupId: UUID,
        accessLevel: AccessLevel,
        maxUses: Int? = nil,
        expiration: Date? = nil
    ) {
        self.groupId = groupId
        self.accessLevel = accessLevel
        self.maxUses = maxUses
        self.expiration = expiration
    }
}

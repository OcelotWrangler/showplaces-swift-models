//
//  ShareGroupRequest.swift
//
//
//  Created by Kevin Barnes on 8/8/24.
//

import Vapor

public struct ShareGroupRequest: Content {
    
    public var userId: UUID?
    public var groupId: UUID
    public var accessLevel: AccessLevel
    
    public init(
        userId: UUID? = nil,
        groupId: UUID,
        accessLevel: AccessLevel
    ) {
        self.userId = userId
        self.groupId = groupId
        self.accessLevel = accessLevel
    }
}

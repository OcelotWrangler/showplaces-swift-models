//
//  ShareGroupRequest.swift
//  ShowplacesModels
//
//  Created by Kevin Barnes on 8/3/26.
//

import Foundation

public struct ShareGroupRequest: Codable, Sendable {

    public var groupId: UUID
    public var shareType: ShareType
    public var accessLevel: AccessLevel
    public var maxUses: Int?
    public var expiration: Date?

    public init(
        groupId: UUID,
        shareType: ShareType,
        accessLevel: AccessLevel,
        maxUses: Int? = nil,
        expiration: Date? = nil
    ) {
        self.groupId = groupId
        self.shareType = shareType
        self.accessLevel = accessLevel
        self.maxUses = maxUses
        self.expiration = expiration
    }
}

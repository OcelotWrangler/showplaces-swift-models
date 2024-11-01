//
//  GroupDTO.swift
//
//
//  Created by Kevin Barnes on 5/11/24.
//

import Vapor

public struct GroupDTO: Content, Hashable, Identifiable {
    
    public var id: UUID
    public var title: String
    public var description: String?
    public var tags: [TagDTO]
    public var showplaces: [ShowplaceDTO]
    public var created: Date
    public var updated: Date
    public var imageKey: String?
    public var showTitleOnHeader: Bool
    public var ownershipStatus: OwnershipStatus
    /// The number of users this group has been shared with, if any.
    public var sharedWith: Int?
    /// Only returned if this is a shared group and is not owned by the signed-in user.
    public var owner: UserDTO?
    
    public init(
        id: UUID,
        title: String,
        description: String? = nil,
        tags: [TagDTO],
        showplaces: [ShowplaceDTO],
        created: Date,
        updated: Date,
        imageKey: String? = nil,
        showTitleOnHeader: Bool,
        ownershipStatus: OwnershipStatus,
        sharedWith: Int? = nil,
        owner: UserDTO? = nil
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.tags = tags
        self.showplaces = showplaces
        self.created = created
        self.updated = updated
        self.imageKey = imageKey
        self.showTitleOnHeader = showTitleOnHeader
        self.ownershipStatus = ownershipStatus
        self.sharedWith = sharedWith
        self.owner = owner
    }
}

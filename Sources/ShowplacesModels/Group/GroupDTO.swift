//
//  GroupDTO.swift
//
//
//  Created by Kevin Barnes on 5/11/24.
//

import Foundation

public struct GroupDTO: Codable, Sendable, Hashable, Identifiable {
    
    public var id: UUID
    public var title: String
    public var description: String?
    public var created: Date
    public var updated: Date
    public var coverImage: MediaDTO?
    public var ownershipStatus: OwnershipStatus
    /// The owner's display name, for groups the viewer doesn't own. Nil on their own.
    public var ownerDisplayName: String?
    /// How many people besides the owner have access. Lets the owner's own groups show as shared.
    public var memberCount: Int
    
    public init(
        id: UUID,
        title: String,
        description: String? = nil,
        created: Date,
        updated: Date,
        coverImage: MediaDTO? = nil,
        ownershipStatus: OwnershipStatus,
        ownerDisplayName: String? = nil,
        memberCount: Int = 0
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.created = created
        self.updated = updated
        self.coverImage = coverImage
        self.ownershipStatus = ownershipStatus
        self.ownerDisplayName = ownerDisplayName
        self.memberCount = memberCount
    }
}

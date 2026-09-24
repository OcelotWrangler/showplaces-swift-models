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
    
    public init(
        id: UUID,
        title: String,
        description: String? = nil,
        created: Date,
        updated: Date,
        coverImage: MediaDTO? = nil,
        ownershipStatus: OwnershipStatus
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.created = created
        self.updated = updated
        self.coverImage = coverImage
        self.ownershipStatus = ownershipStatus
    }
}

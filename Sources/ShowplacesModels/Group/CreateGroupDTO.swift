//
//  CreateGroupDTO.swift
//
//
//  Created by Kevin Barnes on 5/11/24.
//

import Foundation

public struct CreateGroupDTO: Codable, Sendable, Hashable {
    
    /// Client-assigned. See `CreateShowplaceDTO.id` — same idempotency contract.
    public var id: UUID
    
    public var title: String
    public var description: String?
    public var showplaceIds: [UUID]
    public var coverImageKey: String?
    
    public init(
        id: UUID = UUID(),
        title: String,
        description: String? = nil,
        showplaceIds: [UUID],
        coverImageKey: String? = nil
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.showplaceIds = showplaceIds
        self.coverImageKey = coverImageKey
    }
}

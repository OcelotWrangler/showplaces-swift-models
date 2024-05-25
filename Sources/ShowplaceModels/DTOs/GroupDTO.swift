//
//  GroupDTO.swift
//
//
//  Created by Kevin Barnes on 5/11/24.
//

import Fluent
import Vapor

public struct GroupDTO: Content, Hashable, Identifiable {
    
    public let id: UUID
    public var title: String
    public var description: String?
    public var tags: [TagDTO]
    public var showplaces: [ShowplaceDTO]
    public var created: Date
    public var updated: Date
    public var imageKey: String?
    public var showTitleOnHeader: Bool
    
    public init(
        id: UUID,
        title: String,
        description: String? = nil,
        tags: [TagDTO],
        showplaces: [ShowplaceDTO],
        created: Date,
        updated: Date,
        imageKey: String? = nil,
        showTitleOnHeader: Bool
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
    }
    
    public init?(group: Group, db: Database) async throws {
        guard let id = group.id else {
            return nil
        }
        self.id = id
        
        self.title = group.title
        self.description = group.description
        
        let tags = try await group.$tags.get(on: db)
        self.tags = tags
            .map { TagDTO(tag: $0) }
            .filter { $0 != nil }
            .map { $0! }
        
        self.showplaces = []
        let showplaces = try await group.$showplaces.get(on: db)
        for showplace in showplaces {
            if let dto = try await ShowplaceDTO(showplace: showplace, db: db) {
                self.showplaces.append(dto)
            }
        }
        
        guard let created = group.created else {
            return nil
        }
        self.created = created
        
        guard let updated = group.updated else {
            return nil
        }
        self.updated = updated
        
        self.imageKey = group.imageKey
        
        self.showTitleOnHeader = group.showTitleOnHeader
    }
}

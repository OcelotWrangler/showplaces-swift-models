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
}

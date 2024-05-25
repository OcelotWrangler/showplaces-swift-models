//
//  UpdateGroupDTO.swift
//  
//
//  Created by Kevin Barnes on 5/12/24.
//

import Vapor

public struct UpdateGroupDTO: Content, Hashable, Identifiable {
    
    public let id: UUID
    public var title: String
    public var description: String?
    public var tagIds: [UUID]
    public var showplaceIds: [UUID]
    public var imageKey: String?
    public var showTitleOnHeader: Bool
    
    public init(
        id: UUID,
        title: String,
        description: String? = nil,
        tagIds: [UUID],
        showplaceIds: [UUID],
        imageKey: String? = nil,
        showTitleOnHeader: Bool
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.tagIds = tagIds
        self.showplaceIds = showplaceIds
        self.imageKey = imageKey
        self.showTitleOnHeader = showTitleOnHeader
    }
}

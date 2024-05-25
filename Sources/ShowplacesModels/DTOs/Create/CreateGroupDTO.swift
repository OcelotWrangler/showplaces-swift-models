//
//  CreateGroupDTO.swift
//
//
//  Created by Kevin Barnes on 5/11/24.
//

import Vapor

public struct CreateGroupDTO: Content, Hashable {
    
    public var title: String
    public var description: String?
    public var tagIds: [UUID]
    public var showplaceIds: [UUID]
    public var imageKey: String?
    public var showTitleOnHeader: Bool
    
    public init(
        title: String,
        description: String? = nil,
        tagIds: [UUID],
        showplaceIds: [UUID],
        imageKey: String? = nil,
        showTitleOnHeader: Bool
    ) {
        self.title = title
        self.description = description
        self.tagIds = tagIds
        self.showplaceIds = showplaceIds
        self.imageKey = imageKey
        self.showTitleOnHeader = showTitleOnHeader
    }
}

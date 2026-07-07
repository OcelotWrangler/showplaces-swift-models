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
    public var showplaceIds: [UUID]
    public var coverImageKey: String?
    
    public init(
        title: String,
        description: String? = nil,
        showplaceIds: [UUID],
        coverImageKey: String? = nil
    ) {
        self.title = title
        self.description = description
        self.showplaceIds = showplaceIds
        self.coverImageKey = coverImageKey
    }
}

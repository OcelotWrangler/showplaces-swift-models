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
    public var coverImageKey: String?
    
    public init(
        id: UUID,
        title: String,
        description: String? = nil,
        coverImageKey: String? = nil
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.coverImageKey = coverImageKey
    }
}

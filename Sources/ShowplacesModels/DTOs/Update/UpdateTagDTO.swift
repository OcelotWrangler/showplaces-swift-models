//
//  UpdateTagDTO.swift
//  
//
//  Created by Kevin Barnes on 5/12/24.
//

import Vapor

public struct UpdateTagDTO: Content, Hashable, Identifiable {
    
    public let id: UUID
    public var title: String
    public var color: String?
    public var sfSymbol: String?
    public var archived: Bool
    
    public init(
        id: UUID,
        title: String,
        color: String? = nil,
        sfSymbol: String? = nil,
        archived: Bool
    ) {
        self.id = id
        self.title = title
        self.color = color
        self.sfSymbol = sfSymbol
        self.archived = archived
    }
}

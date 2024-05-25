//
//  TagDTO.swift
//
//
//  Created by Kevin Barnes on 5/11/24.
//

import Foundation
import Vapor

public struct TagDTO: Content, Hashable, Identifiable {
    
    public var id: UUID
    public var title: String
    public var color: String?
    public var sfSymbol: String?
    public var archived: Bool
    public var created: Date
    public var updated: Date
    
    public init(
        id: UUID,
        title: String,
        color: String? = nil,
        sfSymbol: String? = nil,
        archived: Bool,
        created: Date,
        updated: Date
    ) {
        self.id = id
        self.title = title
        self.color = color
        self.sfSymbol = sfSymbol
        self.archived = archived
        self.created = created
        self.updated = updated
    }
}

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
    public var description: String?
    public var color: String?
    public var sfSymbol: String?
    public var archived: Bool
    public var created: Date
    public var updated: Date
    public var ownedBySignedInUser: Bool
    
    public init(
        id: UUID,
        title: String,
        description: String? = nil,
        color: String? = nil,
        sfSymbol: String? = nil,
        archived: Bool,
        created: Date,
        updated: Date,
        ownedBySignedInUser: Bool
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.color = color
        self.sfSymbol = sfSymbol
        self.archived = archived
        self.created = created
        self.updated = updated
        self.ownedBySignedInUser = ownedBySignedInUser
    }
}

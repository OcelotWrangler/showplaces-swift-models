//
//  TagStyleDTO.swift
//
//
//  Created by Kevin Barnes on 5/11/24.
//

import Foundation

public struct TagStyleDTO: Codable, Sendable, Hashable, Identifiable {
    
    public var id: UUID
    public var title: String
    /// Describes the tag itself, not any one showplace — the same everywhere the tag appears.
    public var description: String?
    public var color: String?
    public var sfSymbol: String?
    
    public init(
        id: UUID,
        title: String,
        description: String? = nil,
        color: String? = nil,
        sfSymbol: String? = nil
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.color = color
        self.sfSymbol = sfSymbol
    }
}

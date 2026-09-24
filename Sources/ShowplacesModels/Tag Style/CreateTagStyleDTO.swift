//
//  CreateTagStyleDTO.swift
//
//  Created by Kevin Barnes on 6/25/26.
//

import Foundation
import Vapor

public struct CreateTagStyleDTO: Content, Hashable {
    
    /// Client-assigned. See `CreateShowplaceDTO.id` — same idempotency contract.
    public var id: UUID
    
    public var title: String
    public var description: String?
    public var color: String?
    public var sfSymbol: String?
    
    public init(
        id: UUID = UUID(),
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

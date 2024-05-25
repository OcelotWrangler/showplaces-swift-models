//
//  Tag.swift
//
//
//  Created by Kevin Barnes on 4/25/24.
//

import Fluent
import Foundation

public final class Tag: Model {
    
    public static let schema = "tags"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "title")
    public var title: String
    
    @OptionalField(key: "color")
    public var color: String?
    
    @OptionalField(key: "sf_symbol")
    public var sfSymbol: String?
    
    @Field(key: "archived")
    public var archived: Bool
    
    @Timestamp(key: "created", on: .create)
    public var created: Date?

    @Timestamp(key: "updated", on: .update)
    public var updated: Date?
    
//    @Parent(key: "owner_id")
//    var owner: User
    
    public init() { }
    
    public init(
        title: String,
        color: String? = nil,
        sfSymbol: String? = nil,
        archived: Bool = false
    ) {
        self.title = title
        self.color = color
        self.sfSymbol = sfSymbol
        self.archived = archived
    }
}

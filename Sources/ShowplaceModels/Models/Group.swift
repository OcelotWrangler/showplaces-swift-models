//
//  Group.swift
//
//
//  Created by Kevin Barnes on 4/25/24.
//

import Fluent
import Foundation

public final class Group: Model {
    
    public static let schema = "groups"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "title")
    public var title: String
    
    @OptionalField(key: "description")
    public var description: String?
    
    @Siblings(
        through: GroupTag.self,
        from: \.$group,
        to: \.$tag
    )
    public var tags: [Tag]
    
    @Siblings(
        through: ShowplaceGroup.self,
        from: \.$group,
        to: \.$showplace
    )
    public var showplaces: [Showplace]
    
    @Timestamp(key: "created", on: .create)
    public var created: Date?

    @Timestamp(key: "updated", on: .update)
    public var updated: Date?
    
    @Field(key: "image_key")
    public var imageKey: String?
    
    @Field(key: "show_title_on_header")
    public var showTitleOnHeader: Bool
    
//    @OptionalParent(key: "owner_id")
//    var owner: User?
//    
//    /// Users this group has been shared with.
//    @Children(for: \.$group)
//    var shared: [SharedGroup]
    
    public init() { }
    
    public init(
        title: String,
        description: String? = nil,
        imageKey: String? = nil,
        showTitleOnHeader: Bool
    ) {
        self.title = title
        self.description = description
        self.imageKey = imageKey
        self.showTitleOnHeader = showTitleOnHeader
    }
}

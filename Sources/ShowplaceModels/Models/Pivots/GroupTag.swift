//
//  GroupTag.swift
//
//
//  Created by Kevin Barnes on 4/25/24.
//

import Fluent
import Foundation

public final class GroupTag: Model {
    
    public static let schema = "group_tags"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Parent(key: "group_id")
    public var group: Group
    
    @Parent(key: "tag_id")
    public var tag: Tag
    
    public init() { }
}

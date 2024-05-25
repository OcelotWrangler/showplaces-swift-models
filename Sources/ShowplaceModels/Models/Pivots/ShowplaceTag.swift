//
//  ShowplaceTag.swift
//
//
//  Created by Kevin Barnes on 4/25/24.
//

import Fluent
import Foundation

public final class ShowplaceTag: Model {
    
    public static let schema = "showplace_tags"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Parent(key: "showplace_id")
    public var showplace: Showplace
    
    @Parent(key: "tag_id")
    public var tag: Tag
    
    public init() { }
}

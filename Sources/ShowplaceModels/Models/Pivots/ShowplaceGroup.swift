//
//  ShowplaceGroup.swift
//
//
//  Created by Kevin Barnes on 4/25/24.
//

import Fluent
import Foundation

public final class ShowplaceGroup: Model {
    
    public static let schema = "showplace_groups"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Parent(key: "group_id")
    public var group: Group
    
    @Parent(key: "showplace_id")
    public var showplace: Showplace
    
    public init() { }
}

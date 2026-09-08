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
    
    public init(
        id: UUID,
        title: String
    ) {
        self.id = id
        self.title = title
    }
}

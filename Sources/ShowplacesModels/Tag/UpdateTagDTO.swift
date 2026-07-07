//
//  UpdateTagDTO.swift
//  
//
//  Created by Kevin Barnes on 5/12/24.
//

import Vapor

public struct UpdateTagDTO: Content, Hashable {
    
    public var title: String
    public var description: String?
    
    public init(
        title: String,
        description: String? = nil
    ) {
        self.title = title
        self.description = description
    }
}

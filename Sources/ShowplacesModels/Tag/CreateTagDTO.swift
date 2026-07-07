//
//  CreateTagDTO.swift
//  
//
//  Created by Kevin Barnes on 5/11/24.
//

import Vapor

public struct CreateTagDTO: Content, Hashable {
    
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

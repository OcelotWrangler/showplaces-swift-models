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
    public var color: String?
    public var sfSymbol: String?
    
    public init(
        title: String,
        description: String? = nil,
        color: String? = nil,
        sfSymbol: String? = nil
    ) {
        self.title = title
        self.description = description
        self.color = color
        self.sfSymbol = sfSymbol
    }
}

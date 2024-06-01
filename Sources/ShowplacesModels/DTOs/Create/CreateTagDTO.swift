//
//  CreateTagDTO.swift
//  
//
//  Created by Kevin Barnes on 5/11/24.
//

import Vapor

public struct CreateTagDTO: Content, Hashable {
    
    public var title: String
    public var color: String?
    public var sfSymbol: String?
    public var position: Int
    
    public init(
        title: String,
        color: String? = nil,
        sfSymbol: String? = nil,
        position: Int
    ) {
        self.title = title
        self.color = color
        self.sfSymbol = sfSymbol
        self.position = position
    }
}

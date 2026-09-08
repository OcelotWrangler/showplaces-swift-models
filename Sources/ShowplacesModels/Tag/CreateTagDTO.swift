//
//  CreateTagDTO.swift
//  
//
//  Created by Kevin Barnes on 5/11/24.
//

import Vapor

public struct CreateTagDTO: Content, Hashable {
    
    public var title: String
    
    public init(
        title: String
    ) {
        self.title = title
    }
}

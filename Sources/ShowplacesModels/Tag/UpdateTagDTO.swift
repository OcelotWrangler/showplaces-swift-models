//
//  UpdateTagDTO.swift
//  
//
//  Created by Kevin Barnes on 5/12/24.
//

import Vapor

public struct UpdateTagDTO: Content, Hashable {
    
    public var title: String
    
    public init(
        title: String
    ) {
        self.title = title
    }
}

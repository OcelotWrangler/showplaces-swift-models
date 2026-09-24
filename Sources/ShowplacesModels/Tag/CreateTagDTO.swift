//
//  CreateTagDTO.swift
//  
//
//  Created by Kevin Barnes on 5/11/24.
//

import Foundation

public struct CreateTagDTO: Codable, Sendable, Hashable {
    
    public var title: String
    
    public init(
        title: String
    ) {
        self.title = title
    }
}

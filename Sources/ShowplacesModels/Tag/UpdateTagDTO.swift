//
//  UpdateTagDTO.swift
//  
//
//  Created by Kevin Barnes on 5/12/24.
//

import Foundation

public struct UpdateTagDTO: Codable, Sendable, Hashable {
    
    public var title: String
    
    public init(
        title: String
    ) {
        self.title = title
    }
}

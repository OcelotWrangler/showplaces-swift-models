//
//  ModifySharedShowplaceDTO.swift
//  
//
//  Created by Kevin Barnes on 8/8/24.
//

import Vapor

public struct ModifySharedShowplaceDTO: Content {
    
    public var accessLevel: AccessLevel
    
    public init(accessLevel: AccessLevel) {
        self.accessLevel = accessLevel
    }
}

//
//  SharedWithDTO.swift
//
//
//  Created by Kevin Barnes on 8/8/24.
//

import Vapor

public struct SharedWithDTO: Content {
    
    public var user: UserDTO
    public var accessLevel: AccessLevel
    
    public init(
        user: UserDTO,
        accessLevel: AccessLevel
    ) {
        self.user = user
        self.accessLevel = accessLevel
    }
}

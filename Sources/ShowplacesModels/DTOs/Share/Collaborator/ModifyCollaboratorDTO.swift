//
//  ModifyCollaboratorDTO.swift
//  
//
//  Created by Kevin Barnes on 8/8/24.
//

import Vapor

public struct ModifyCollaboratorDTO: Content {
    
    public var collaboratorId: Int
    public var accessLevel: AccessLevel
    
    public init(
        collaboratorId: Int,
        accessLevel: AccessLevel
    ) {
        self.collaboratorId = collaboratorId
        self.accessLevel = accessLevel
    }
}

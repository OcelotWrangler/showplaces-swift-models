//
//  ModifyCollaboratorDTO.swift
//  
//
//  Created by Kevin Barnes on 8/8/24.
//

import Vapor

public struct ModifyCollaboratorDTO: Content {
    
    public var collaboratorId: UUID
    public var accessLevel: AccessLevel

    public init(
        collaboratorId: UUID,
        accessLevel: AccessLevel
    ) {
        self.collaboratorId = collaboratorId
        self.accessLevel = accessLevel
    }
}

//
//  ModifyCollaboratorDTO.swift
//  
//
//  Created by Kevin Barnes on 8/8/24.
//

import Foundation

public struct ModifyCollaboratorDTO: Codable, Sendable {
    
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

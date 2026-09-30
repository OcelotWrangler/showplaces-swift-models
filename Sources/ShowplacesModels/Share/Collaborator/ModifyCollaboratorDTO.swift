//
//  ModifyCollaboratorDTO.swift
//  
//
//  Created by Kevin Barnes on 8/8/24.
//

import Foundation

public struct ModifyCollaboratorDTO: Codable, Sendable {
    
    /// The collaborator's `CollaboratorDTO.shareId`, not their user id.
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

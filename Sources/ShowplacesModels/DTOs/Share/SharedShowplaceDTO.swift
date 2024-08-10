//
//  SharedShowplaceDTO.swift
//  
//
//  Created by Kevin Barnes on 8/8/24.
//

import Vapor

public struct SharedShowplaceDTO: Content, Hashable, Identifiable {
    
    public var id: UUID
    public var accessLevel: AccessLevel
    public var showplace: ShowplaceDTO
    public var sharedBy: UserDTO
    
    public init(
        id: UUID,
        accessLevel: AccessLevel,
        showplace: ShowplaceDTO,
        sharedBy: UserDTO
    ) {
        self.id = id
        self.accessLevel = accessLevel
        self.showplace = showplace
        self.sharedBy = sharedBy
    }
}

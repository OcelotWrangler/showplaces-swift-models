//
//  File.swift
//  
//
//  Created by Kevin Barnes on 5/23/24.
//

import Vapor

public struct UserDTO: Content, Hashable, Identifiable {
    
    public var id: UUID
    public var email: String
    public var username: String
    public var created: Date
    public var updated: Date
    
    public init(
        id: UUID,
        email: String,
        username: String,
        created: Date,
        updated: Date
    ) {
        self.id = id
        self.email = email
        self.username = username
        self.created = created
        self.updated = updated
    }
}

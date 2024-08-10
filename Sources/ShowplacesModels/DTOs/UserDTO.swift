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
    public var firstName: String?
    public var lastName: String?
    public var profilePictureKey: String?
    public var created: Date
    public var updated: Date
    
    public init(
        id: UUID,
        email: String,
        username: String,
        firstName: String? = nil,
        lastName: String? = nil,
        profilePictureKey: String? = nil,
        created: Date,
        updated: Date
    ) {
        self.id = id
        self.email = email
        self.username = username
        self.firstName = firstName
        self.lastName = lastName
        self.profilePictureKey = profilePictureKey
        self.created = created
        self.updated = updated
    }
}

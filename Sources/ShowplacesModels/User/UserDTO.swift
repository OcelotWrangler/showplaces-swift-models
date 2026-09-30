//
//  File.swift
//  
//
//  Created by Kevin Barnes on 5/23/24.
//

import Foundation

public struct UserDTO: Codable, Sendable, Hashable, Identifiable {
    
    public var id: UUID
    public var email: String
    public var username: String
    public var firstName: String?
    public var lastName: String?
    /// The name this person chose to show other people, if they have set one. What others actually
    /// see is resolved server-side (see `CollaboratorDTO.displayName`), falling back to their name
    /// from Apple and then their username.
    public var displayName: String?
    public var profilePictureKey: String?
    public var isPro: Bool
    public var created: Date
    public var updated: Date

    public init(
        id: UUID,
        email: String,
        username: String,
        firstName: String? = nil,
        lastName: String? = nil,
        displayName: String? = nil,
        profilePictureKey: String? = nil,
        isPro: Bool = false,
        created: Date,
        updated: Date
    ) {
        self.id = id
        self.email = email
        self.username = username
        self.firstName = firstName
        self.lastName = lastName
        self.displayName = displayName
        self.profilePictureKey = profilePictureKey
        self.isPro = isPro
        self.created = created
        self.updated = updated
    }
}

//
//  CollaboratorDTO.swift
//
//
//  Created by Kevin Barnes on 8/8/24.
//

import Foundation

/// One person with access to a shared showplace or group, as every other member sees them: a name
/// and eventually a picture, never an email.
public struct CollaboratorDTO: Codable, Sendable, Hashable, Identifiable {

    /// The person's user id.
    public var id: UUID

    /// The share that gives this person access. It is what the owner passes to change their access
    /// (`ModifyCollaboratorDTO.collaboratorId`) or remove them. Nil for the owner, who needs no share.
    public var shareId: UUID?

    /// Resolved on the server: the name they chose, else their name from Apple, else their username.
    public var displayName: String

    public var profilePictureKey: String?

    public var isOwner: Bool

    /// Always `.editable` for the owner.
    public var accessLevel: AccessLevel

    public init(
        id: UUID,
        shareId: UUID?,
        displayName: String,
        profilePictureKey: String? = nil,
        isOwner: Bool,
        accessLevel: AccessLevel
    ) {
        self.id = id
        self.shareId = shareId
        self.displayName = displayName
        self.profilePictureKey = profilePictureKey
        self.isOwner = isOwner
        self.accessLevel = accessLevel
    }
}

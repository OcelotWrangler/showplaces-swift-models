//
//  SharedShowplaceDTO.swift
//
//
//  Created by Kevin Barnes on 5/22/24.
//

import Foundation

public struct SharedShowplaceDTO: Codable, Sendable, Hashable {
    
    /// The showplace that was shared. For a `.copy` share this is the snapshot taken when the sender
    /// shared it, not the sender's showplace as it is now.
    public var showplace: ShowplaceDTO
    
    /// The showplace's photos, in order. Carried here so a recipient who is signed out, or at the free
    /// cloud cap, can keep a copy on their device without a second request.
    public var media: [MediaDTO]
    
    /// Whether this is a frozen snapshot (`.copy`) or a live reference back to the sender's showplace (`.live`).
    public var shareType: ShareType
    
    /// For a `.live` share, whether the recipient has read-only access ("Live" mode) or edit access ("Collaborate" mode).
    /// Ignored for `.copy` shares, since the recipient owns an independent duplicate outright — always treat as view only.
    public var accessLevel: AccessLevel
    
    /// Who sent the invite, as they appear to other people.
    public var invitedByDisplayName: String
    
    public init(
        showplace: ShowplaceDTO,
        media: [MediaDTO] = [],
        shareType: ShareType,
        accessLevel: AccessLevel,
        invitedByDisplayName: String
    ) {
        self.showplace = showplace
        self.media = media
        self.shareType = shareType
        self.accessLevel = accessLevel
        self.invitedByDisplayName = invitedByDisplayName
    }
}

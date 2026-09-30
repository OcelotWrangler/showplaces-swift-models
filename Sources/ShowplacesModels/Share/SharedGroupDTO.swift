//
//  SharedGroupDTO.swift
//
//
//  Created by Kevin Barnes on 8/3/26.
//

import Foundation

public struct SharedGroupDTO: Codable, Sendable, Hashable {

    /// The group that was shared. For a `.copy` share this is the snapshot taken when the sender
    /// shared it, not the sender's group as it is now.
    public var group: GroupDTO

    /// The group's showplaces, in the group's order. Lets the preview show them on a map, and lets a
    /// recipient who is signed out, or at the free cloud cap, keep a copy on their device.
    public var showplaces: [ShowplaceDTO]

    /// Photos for those showplaces, each tagged with its `showplaceId`.
    public var media: [MediaDTO]

    /// Whether this is a frozen snapshot (`.copy`) or a live reference back to the sender's group (`.live`).
    public var shareType: ShareType

    /// For a `.live` share, whether the recipient has read-only access ("Live" mode) or edit access ("Collaborate" mode).
    /// Ignored for `.copy` shares, since the recipient owns an independent duplicate outright — always treat as view only.
    public var accessLevel: AccessLevel

    /// Who sent the invite, as they appear to other people.
    public var invitedByDisplayName: String

    public init(
        group: GroupDTO,
        showplaces: [ShowplaceDTO] = [],
        media: [MediaDTO] = [],
        shareType: ShareType,
        accessLevel: AccessLevel,
        invitedByDisplayName: String
    ) {
        self.group = group
        self.showplaces = showplaces
        self.media = media
        self.shareType = shareType
        self.accessLevel = accessLevel
        self.invitedByDisplayName = invitedByDisplayName
    }
}

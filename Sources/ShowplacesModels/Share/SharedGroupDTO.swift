//
//  SharedGroupDTO.swift
//  ShowplacesModels
//
//  Created by Kevin Barnes on 8/3/26.
//

import Vapor

/// Retrieve a shared group from a share ID.
public struct SharedGroupDTO: Content, Hashable {

    /// The group that was shared.
    public var group: GroupDTO

    /// Whether this is a frozen snapshot (`.copy`) or a live reference back to the sender's group (`.live`).
    public var shareType: ShareType

    /// For a `.live` share, whether the recipient has read-only access ("Live" mode) or edit access ("Collaborate" mode).
    /// Ignored for `.copy` shares, since the recipient owns an independent duplicate outright — always treat as view only.
    public var accessLevel: AccessLevel

    public init(
        group: GroupDTO,
        shareType: ShareType,
        accessLevel: AccessLevel
    ) {
        self.group = group
        self.shareType = shareType
        self.accessLevel = accessLevel
    }
}

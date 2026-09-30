//
//  AcceptInviteResponse.swift
//
//
//  Created by Kevin Barnes on 9/29/26.
//

import Foundation

/// What accepting a showplace or group invite produced.
///
/// A signed-out recipient can accept a `.copy` invite too. Nothing is stored for them on the server;
/// the accept only counts against the invite's uses, and every showplace comes back in
/// `showplaceIdsNotCopied` for the device to keep from the invite preview.
public struct AcceptInviteResponse: Codable, Sendable {

    /// Always true on a 2xx. Kept so builds that decode `SuccessStatus` still understand the reply.
    public var success: Bool

    /// The recipient's group: their new copy for `.copy`, the shared group itself for `.live`. Nil
    /// for a showplace invite, or when nothing was stored on the server.
    public var groupId: UUID?

    /// Showplaces now in the recipient's library on the server: new copies for `.copy`, the shared
    /// showplace for a `.live` showplace invite. Empty for a `.live` group invite, whose showplaces
    /// arrive with the group on the next pull.
    public var showplaceIds: [UUID]

    /// Showplaces from the invite that were not copied to the server, by their id in the invite
    /// preview: all of them when signed out, and those past the free cloud cap when signed in. The
    /// client keeps these on the device only and tells the user why.
    public var showplaceIdsNotCopied: [UUID]

    public init(
        groupId: UUID? = nil,
        showplaceIds: [UUID] = [],
        showplaceIdsNotCopied: [UUID] = []
    ) {
        self.success = true
        self.groupId = groupId
        self.showplaceIds = showplaceIds
        self.showplaceIdsNotCopied = showplaceIdsNotCopied
    }
}

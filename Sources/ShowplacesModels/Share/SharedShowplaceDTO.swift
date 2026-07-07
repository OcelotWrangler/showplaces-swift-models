//
//  SharedShowplaceDTO.swift
//  ShowplacesModels
//
//  Created by Kevin Barnes on 10/31/24.
//

import Vapor

/// Retrieve a shared showplace from a share ID.
public struct SharedShowplaceDTO: Content, Hashable {
    
    /// The showplace that was shared.
    public var showplace: ShowplaceDTO
    
    /// Whether this is a frozen snapshot (`.copy`) or a live reference back to the sender's showplace (`.live`).
    public var shareType: ShareType
    
    /// For a `.live` share, whether the recipient has read-only access ("Live" mode) or edit access ("Collaborate" mode).
    /// Ignored for `.copy` shares, since the recipient owns an independent duplicate outright — always treat as view only.
    public var accessLevel: AccessLevel
    
    public init(
        showplace: ShowplaceDTO,
        shareType: ShareType,
        accessLevel: AccessLevel
    ) {
        self.showplace = showplace
        self.shareType = shareType
        self.accessLevel = accessLevel
    }
}

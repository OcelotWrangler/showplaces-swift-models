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
    
    /// The type of share: live or copy.
    public var shareType: ShareType
    
    /// The access level if this is a live share. If this is a copy then the access level is view only.
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

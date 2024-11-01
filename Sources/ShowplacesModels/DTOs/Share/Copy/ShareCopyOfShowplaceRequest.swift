//
//  ShareCopyOfShowplaceRequest.swift
//  ShowplacesModels
//
//  Created by Kevin Barnes on 10/31/24.
//

import Vapor

public struct ShareCopyOfShowplaceRequest: Content {
    
    public var showplaceId: UUID
    
    public init(showplaceId: UUID) {
        self.showplaceId = showplaceId
    }
}

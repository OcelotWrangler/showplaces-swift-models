//
//  ShareCopyOfGroupRequest.swift
//  ShowplacesModels
//
//  Created by Kevin Barnes on 10/31/24.
//

import Vapor

public struct ShareCopyOfGroupRequest: Content {
    
    public var groupId: UUID
    
    public init(groupId: UUID) {
        self.groupId = groupId
    }
}

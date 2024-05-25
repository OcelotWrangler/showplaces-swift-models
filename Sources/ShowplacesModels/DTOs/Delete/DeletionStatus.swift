//
//  DeletionStatus.swift
//
//
//  Created by Kevin Barnes on 5/25/24.
//

import Vapor

public struct DeletionStatus: Content {
    
    public var deleted: Bool
    
    public init(deleted: Bool) {
        self.deleted = deleted
    }
}

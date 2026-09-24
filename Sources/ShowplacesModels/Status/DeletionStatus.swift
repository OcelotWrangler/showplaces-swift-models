//
//  DeletionStatus.swift
//
//
//  Created by Kevin Barnes on 5/25/24.
//

import Foundation

public struct DeletionStatus: Codable, Sendable {
    
    public var deleted: Bool
    
    public init(deleted: Bool) {
        self.deleted = deleted
    }
}

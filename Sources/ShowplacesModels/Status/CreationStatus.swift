//
//  CreationStatus.swift
//
//
//  Created by Kevin Barnes on 6/5/24.
//

import Foundation

public struct CreationStatus: Codable, Sendable {
    
    public var created: Bool
    
    public init(created: Bool) {
        self.created = created
    }
}

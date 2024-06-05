//
//  CreationStatus.swift
//
//
//  Created by Kevin Barnes on 6/5/24.
//

import Foundation

import Vapor

public struct CreationStatus: Content {
    
    public var created: Bool
    
    public init(created: Bool) {
        self.created = created
    }
}

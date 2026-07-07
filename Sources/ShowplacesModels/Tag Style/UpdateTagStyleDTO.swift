//
//  UpdateTagStyleDTO.swift
//  ShowplacesModels
//
//  Created by Kevin Barnes on 6/25/26.
//

import Foundation
import Vapor

public struct UpdateTagStyleDTO: Content, Hashable, Identifiable {
    
    public var id: UUID
    public var title: String
    public var color: String?
    public var sfSymbol: String?
    
    public init(
        id: UUID,
        title: String,
        color: String? = nil,
        sfSymbol: String? = nil
    ) {
        self.id = id
        self.title = title
        self.color = color
        self.sfSymbol = sfSymbol
    }
}

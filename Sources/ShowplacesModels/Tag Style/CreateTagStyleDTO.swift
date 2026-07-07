//
//  CreateTagStyleDTO.swift
//
//  Created by Kevin Barnes on 6/25/26.
//

import Foundation
import Vapor

public struct CreateTagStyleDTO: Content, Hashable {
    
    public var title: String
    public var color: String?
    public var sfSymbol: String?
    
    public init(
        title: String,
        color: String? = nil,
        sfSymbol: String? = nil
    ) {
        self.title = title
        self.color = color
        self.sfSymbol = sfSymbol
    }
}

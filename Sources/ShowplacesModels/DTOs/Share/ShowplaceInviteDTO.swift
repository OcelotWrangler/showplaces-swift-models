//
//  ShowplaceInviteDTO.swift
//  ShowplacesModels
//
//  Created by Kevin Barnes on 11/1/24.
//

import Vapor

public struct ShowplaceInviteDTO: Content, Hashable, Identifiable {
    
    public let id: UUID
    public var errorMessage: String?
    public var shared: SharedShowplaceDTO?
    
    public init(
        id: UUID,
        errorMessage: String? = nil,
        shared: SharedShowplaceDTO? = nil
    ) {
        self.id = id
        self.errorMessage = errorMessage
        self.shared = shared
    }
}

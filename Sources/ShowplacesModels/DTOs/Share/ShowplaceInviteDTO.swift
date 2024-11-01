//
//  ShowplaceInviteDTO.swift
//  ShowplacesModels
//
//  Created by Kevin Barnes on 11/1/24.
//

import Vapor

public struct ShowplaceInviteDTO: Content {
    
    public var errorMessage: String?
    public var shared: SharedShowplaceDTO?
    
    public init(
        errorMessage: String? = nil,
        shared: SharedShowplaceDTO? = nil
    ) {
        self.errorMessage = errorMessage
        self.shared = shared
    }
}

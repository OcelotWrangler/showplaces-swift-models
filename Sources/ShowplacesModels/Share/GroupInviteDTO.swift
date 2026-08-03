//
//  GroupInviteDTO.swift
//  ShowplacesModels
//
//  Created by Kevin Barnes on 8/3/26.
//

import Vapor

public struct GroupInviteDTO: Content, Hashable, Identifiable {

    public let id: UUID
    public var errorMessage: String?
    public var shared: SharedGroupDTO?

    public init(
        id: UUID,
        errorMessage: String? = nil,
        shared: SharedGroupDTO? = nil
    ) {
        self.id = id
        self.errorMessage = errorMessage
        self.shared = shared
    }
}

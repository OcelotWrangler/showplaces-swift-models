//
//  UpdateUserDTO.swift
//
//
//  Created by Kevin Barnes on 8/5/24.
//

import Vapor

public struct UpdateUserDTO: Content {
    
    public var email: String
    public var firstName: String?
    public var lastName: String?
    public var profilePictureKey: String?
    
    public init(
        email: String,
        firstName: String? = nil,
        lastName: String? = nil,
        profilePictureKey: String? = nil
    ) {
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.profilePictureKey = profilePictureKey
    }
}

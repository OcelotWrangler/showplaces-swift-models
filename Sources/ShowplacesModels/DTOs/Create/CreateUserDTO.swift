//
//  CreateUserDTO.swift
//  
//
//  Created by Kevin Barnes on 5/23/24.
//

import Vapor

public struct CreateUserDTO: Content {
    
    public var email: String
    public var firstName: String?
    public var lastName: String?
    public var password: String
    
    public init(
        email: String,
        firstName: String? = nil,
        lastName: String? = nil,
        password: String
    ) {
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.password = password
    }
}

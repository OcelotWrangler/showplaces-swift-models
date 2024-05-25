//
//  CreateUserDTO.swift
//  
//
//  Created by Kevin Barnes on 5/23/24.
//

import Vapor

public struct CreateUserDTO: Content {
    
    public var email: String
    public var password: String
    
    public init(
        email: String,
        password: String
    ) {
        self.email = email
        self.password = password
    }
}

//
//  CreateUserDTO.swift
//  
//
//  Created by Kevin Barnes on 5/23/24.
//

import Foundation

public struct CreateUserDTO: Codable, Sendable {
    
    public var email: String
    public var firstName: String?
    public var lastName: String?
    
    public init(
        email: String,
        firstName: String? = nil,
        lastName: String? = nil
    ) {
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
    }
}

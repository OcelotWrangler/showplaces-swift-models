//
//  File.swift
//  
//
//  Created by Kevin Barnes on 5/23/24.
//

import Vapor

public struct UserDTO: Content, Hashable, Identifiable {
    
    public let id: UUID
    public var email: String
    public var username: String
    public var created: Date
    public var updated: Date
    
    public init(
        id: UUID,
        email: String,
        username: String,
        created: Date,
        updated: Date
    ) {
        self.id = id
        self.email = email
        self.username = username
        self.created = created
        self.updated = updated
    }
    
//    init?(user: User) {
//        guard let id = user.id else {
//            return nil
//        }
//        
//        self.id = id
//        
//        self.email = user.email
//        self.username = user.username
//        
//        guard let created = user.created else {
//            return nil
//        }
//        
//        self.created = created
//        
//        guard let updated = user.updated else {
//            return nil
//        }
//        
//        self.updated = updated
//    }
}

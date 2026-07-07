//
//  LogoutResponse.swift
//  
//
//  Created by Kevin Barnes on 5/26/24.
//

import Vapor

public struct LogoutResponse: Content {
    
    public var loggedOut: Bool
    
    public init(loggedOut: Bool) {
        self.loggedOut = loggedOut
    }
}

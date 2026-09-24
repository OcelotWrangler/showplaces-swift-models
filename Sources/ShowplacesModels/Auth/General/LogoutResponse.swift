//
//  LogoutResponse.swift
//  
//
//  Created by Kevin Barnes on 5/26/24.
//

import Foundation

public struct LogoutResponse: Codable, Sendable {
    
    public var loggedOut: Bool
    
    public init(loggedOut: Bool) {
        self.loggedOut = loggedOut
    }
}

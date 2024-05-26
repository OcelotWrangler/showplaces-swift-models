//
//  LogoutRequest.swift
//
//
//  Created by Kevin Barnes on 5/26/24.
//

import Vapor

public struct LogoutRequest: Content {
    
    public var deviceId: UUID
    
    public init(deviceId: UUID) {
        self.deviceId = deviceId
    }
}

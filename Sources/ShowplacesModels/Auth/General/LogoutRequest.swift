//
//  LogoutRequest.swift
//
//
//  Created by Kevin Barnes on 5/26/24.
//

import Foundation

public struct LogoutRequest: Codable, Sendable {
    
    public var deviceId: UUID
    
    public init(deviceId: UUID) {
        self.deviceId = deviceId
    }
}

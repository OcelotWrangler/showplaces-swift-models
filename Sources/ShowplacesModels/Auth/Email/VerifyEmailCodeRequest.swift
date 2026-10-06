//
//  VerifyEmailCodeRequest.swift
//
//
//  Created by Kevin Barnes on 10/6/26.
//

import Foundation

/// Trades an emailed code for a session (`POST /auth/email/verify`). Creates the account if no
/// account has this email; `LoginResponse.isNewAccount` says when it did.
public struct VerifyEmailCodeRequest: Codable, Sendable {

    public var email: String
    public var code: String
    public var deviceId: UUID

    public init(email: String, code: String, deviceId: UUID) {
        self.email = email
        self.code = code
        self.deviceId = deviceId
    }
}

//
//  EmailCodeRequest.swift
//
//
//  Created by Kevin Barnes on 10/6/26.
//

import Foundation

/// Asks for a sign-in code to be emailed (`POST /auth/email/start`). The same call signs in an
/// existing account or starts a new one; the answer never says which.
public struct EmailCodeRequest: Codable, Sendable {

    public var email: String

    public init(email: String) {
        self.email = email
    }
}

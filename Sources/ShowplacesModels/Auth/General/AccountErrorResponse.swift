//
//  AccountErrorResponse.swift
//
//
//  Created by Kevin Barnes on 10/6/26.
//

import Foundation

/// The body of every failed account request: Vapor's usual `error` and `reason`, plus a typed code.
/// These never come with a 401, so a client doesn't take one for an expired session.
public struct AccountErrorResponse: Codable, Sendable, Error {

    public var error: Bool
    /// For logs. Not meant to be shown; the client words `code` itself.
    public var reason: String
    public var code: AccountErrorCode
    /// With `incorrectCode`: wrong tries left before the code is used up.
    public var attemptsRemaining: Int?
    /// With `rateLimited`: seconds until another try is allowed.
    public var retryAfterSeconds: Int?

    public init(
        reason: String,
        code: AccountErrorCode,
        attemptsRemaining: Int? = nil,
        retryAfterSeconds: Int? = nil
    ) {
        self.error = true
        self.reason = reason
        self.code = code
        self.attemptsRemaining = attemptsRemaining
        self.retryAfterSeconds = retryAfterSeconds
    }
}

//
//  AccountErrorCode.swift
//
//
//  Created by Kevin Barnes on 10/6/26.
//

import Foundation

/// Why a sign-in, profile or account request failed. The client words each one itself; see
/// `showplaces-accounts.md`, "Errors".
public enum AccountErrorCode: String, Codable, Sendable, CaseIterable {
    case invalidEmail
    /// Carries `AccountErrorResponse.attemptsRemaining`.
    case incorrectCode
    /// Also sent when no code is waiting for that email.
    case codeExpired
    /// The code was used up by wrong tries; a new one is needed.
    case tooManyAttempts
    /// Carries `AccountErrorResponse.retryAfterSeconds`.
    case rateLimited
    case emailNotSent
    case appleSignInFailed
    /// A new account through Apple, but the identity token carried no email.
    case appleEmailMissing
    case appleIdInUse
    case displayNameTooLong
    case pictureUnsupported
    case pictureTooLarge
    /// A code this build doesn't know, from a newer server.
    case unknown

    public init(from decoder: Decoder) throws {
        let rawValue = try decoder.singleValueContainer().decode(String.self)
        self = AccountErrorCode(rawValue: rawValue) ?? .unknown
    }
}

//
//  AppleSignInRequest.swift
//
//
//  Created by Kevin Barnes on 10/6/26.
//

import Foundation

/// Signs in with Apple, linking or creating the account as needed (`POST /auth/apple`). There is no
/// separate sign-up: Apple sends the name only on the first authorization, so a failed sign-in
/// retried as a sign-up would already have lost it.
public struct AppleSignInRequest: Codable, Sendable {

    /// The JWT from `ASAuthorizationAppleIDCredential.identityToken`. The server takes the Apple ID
    /// and the email from it, never from the client.
    public var identityToken: String

    /// `ASAuthorizationAppleIDCredential.authorizationCode`, single use. The server exchanges it for
    /// the Apple refresh token it needs to revoke the token when the account is deleted.
    public var authorizationCode: String?

    /// Only present on the first authorization of this Apple ID for Showplaces.
    public var firstName: String?
    public var lastName: String?

    public var deviceId: UUID

    public init(
        identityToken: String,
        authorizationCode: String?,
        firstName: String? = nil,
        lastName: String? = nil,
        deviceId: UUID
    ) {
        self.identityToken = identityToken
        self.authorizationCode = authorizationCode
        self.firstName = firstName
        self.lastName = lastName
        self.deviceId = deviceId
    }
}

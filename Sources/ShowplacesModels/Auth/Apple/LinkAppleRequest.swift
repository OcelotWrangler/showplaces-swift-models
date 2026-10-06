//
//  LinkAppleRequest.swift
//
//
//  Created by Kevin Barnes on 10/6/26.
//

import Foundation

/// Connects Sign in with Apple to the signed-in account (`POST /account/apple`). Fails with
/// `AccountErrorCode.appleIdInUse` if the Apple ID already belongs to another account.
public struct LinkAppleRequest: Codable, Sendable {

    public var identityToken: String
    public var authorizationCode: String?

    public init(identityToken: String, authorizationCode: String?) {
        self.identityToken = identityToken
        self.authorizationCode = authorizationCode
    }
}

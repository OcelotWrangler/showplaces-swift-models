//
//  EmailCodeResponse.swift
//
//
//  Created by Kevin Barnes on 10/6/26.
//

import Foundation

/// A code is on its way. Identical whether or not the email has an account.
public struct EmailCodeResponse: Codable, Sendable {

    /// How many digits the code has, so the client can lay out its boxes.
    public var codeLength: Int

    /// Seconds until the code stops working.
    public var expiresInSeconds: Int

    /// Seconds until another code can be asked for.
    public var resendAfterSeconds: Int

    public init(codeLength: Int, expiresInSeconds: Int, resendAfterSeconds: Int) {
        self.codeLength = codeLength
        self.expiresInSeconds = expiresInSeconds
        self.resendAfterSeconds = resendAfterSeconds
    }
}

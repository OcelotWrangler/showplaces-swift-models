//
//  AppTransactionRequest.swift
//
//
//  Created by Kevin Barnes on 10/9/26.
//

import Foundation

/// The app's own `AppTransaction` from StoreKit (`POST /app-store/app-transaction`), which says how
/// this copy of the app was installed. A TestFlight install grants the signed-in account Pro while it
/// keeps reporting in. See showplaces-pro.md, "Purchasing". Answered with the account's `UserDTO`.
public struct AppTransactionRequest: Codable, Sendable {

    /// The app transaction's JWS, exactly as StoreKit gives it: `VerificationResult.jwsRepresentation`.
    public var signedAppTransaction: String

    public init(signedAppTransaction: String) {
        self.signedAppTransaction = signedAppTransaction
    }
}

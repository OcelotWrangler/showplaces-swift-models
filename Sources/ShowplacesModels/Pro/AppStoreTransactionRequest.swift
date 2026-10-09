//
//  AppStoreTransactionRequest.swift
//
//
//  Created by Kevin Barnes on 10/9/26.
//

import Foundation

/// A Showplaces Pro transaction from StoreKit, for the server to verify and record against the
/// signed-in account (`POST /app-store/transactions`). Answered with the account's `UserDTO`, Pro or
/// not.
///
/// The client finishes the transaction once this succeeds, and leaves it unfinished on anything else
/// but a `400`, so StoreKit hands it back to try again. A `400` means the server will never accept
/// this transaction (a product that isn't Pro, say), and retrying can't change that.
public struct AppStoreTransactionRequest: Codable, Sendable {

    /// The transaction's JWS, exactly as StoreKit gives it: `VerificationResult.jwsRepresentation`.
    public var signedTransaction: String

    public init(signedTransaction: String) {
        self.signedTransaction = signedTransaction
    }
}

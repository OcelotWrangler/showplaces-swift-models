//
//  UpdateProfileDTO.swift
//
//
//  Created by Kevin Barnes on 9/29/26.
//

import Foundation

/// What a signed-in user can change about how other people see them. Profile pictures will join
/// this once they have an upload path of their own.
public struct UpdateProfileDTO: Codable, Sendable {

    /// Nil or blank clears it, so others see the fallback name again.
    public var displayName: String?

    public init(displayName: String?) {
        self.displayName = displayName
    }
}

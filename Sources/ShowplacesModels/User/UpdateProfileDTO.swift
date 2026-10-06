//
//  UpdateProfileDTO.swift
//
//
//  Created by Kevin Barnes on 9/29/26.
//

import Foundation

/// What a signed-in user can change about how other people see them (`PUT /profile`). The picture
/// has its own endpoints, `PUT` and `DELETE /profile/picture`, since it is a raw JPEG body.
public struct UpdateProfileDTO: Codable, Sendable {

    /// Nil or blank clears it, so others see the fallback name again.
    public var displayName: String?

    public init(displayName: String?) {
        self.displayName = displayName
    }
}

//
//  RenameTagResponse.swift
//
//

import Foundation

public struct RenameTagResponse: Codable, Sendable, Hashable {

    /// How many of the user's showplaces carried the tag and were updated.
    public var showplacesUpdated: Int

    /// Whether the user had a style for the old title that moved with it.
    public var styleRenamed: Bool

    public init(showplacesUpdated: Int, styleRenamed: Bool) {
        self.showplacesUpdated = showplacesUpdated
        self.styleRenamed = styleRenamed
    }
}

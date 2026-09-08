//
//  RenameTagRequest.swift
//
//

import Foundation
import Vapor

/// Renames a tag everywhere it appears on the signed-in user's showplaces.
///
/// Tags are inline values now, so a rename is an N-showplace write rather than a single row update.
/// Doing it client-side would mean one request per affected showplace; this keeps it one request and
/// one transaction. The user's style for the old title, if they have one, follows the rename.
public struct RenameTagRequest: Content, Hashable {

    /// Matched case-insensitively, like every other tag comparison.
    public var currentTitle: String

    /// Stored with exactly this casing.
    public var newTitle: String

    public init(currentTitle: String, newTitle: String) {
        self.currentTitle = currentTitle
        self.newTitle = newTitle
    }
}

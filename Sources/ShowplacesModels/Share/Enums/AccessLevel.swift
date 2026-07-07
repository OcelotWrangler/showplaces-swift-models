//
//  AccessLevel.swift
//
//
//  Created by Kevin Barnes on 8/8/24.
//

import Foundation

public enum AccessLevel: String, Codable, RawRepresentable, Sendable {
    case viewOnly = "VIEW_ONLY"
    case editable = "EDITABLE"
}

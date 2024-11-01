//
//  ShareStatus.swift
//  
//
//  Created by Kevin Barnes on 8/8/24.
//

import Foundation

public enum OwnershipStatus: String, Codable, RawRepresentable {
    case ownedByMe = "OWNED_BY_ME"
    case sharedAndEditable = "SHARED_AND_EDITABLE"
    case sharedViewOnly = "SHARED_VIEW_ONLY"
    case shareExpired = "SHARE_EXPIRED"
}

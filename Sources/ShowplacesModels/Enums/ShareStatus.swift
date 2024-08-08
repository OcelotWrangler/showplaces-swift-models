//
//  ShareStatus.swift
//  
//
//  Created by Kevin Barnes on 8/8/24.
//

import Foundation

public enum ShareStatus: String, Codable, RawRepresentable {
    case pending = "PENDING"
    case accepted = "ACCEPTED"
    case declined = "DECLINED"
}

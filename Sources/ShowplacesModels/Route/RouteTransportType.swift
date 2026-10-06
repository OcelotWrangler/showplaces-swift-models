//
//  RouteTransportType.swift
//
//
//  Created by Kevin Barnes on 10/6/26.
//

import Foundation

/// How a route is travelled. Only driving for now; the field exists so walking or cycling can follow
/// without a contract change.
///
/// The raw values are what colossus already stores on device (`Route.transportTypeRaw`).
public enum RouteTransportType: String, Codable, Sendable, CaseIterable {
    case automobile
}

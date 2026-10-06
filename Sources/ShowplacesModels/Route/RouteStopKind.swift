//
//  RouteStopKind.swift
//
//
//  Created by Kevin Barnes on 10/6/26.
//

import Foundation

/// What a route stop points at.
///
/// The raw values are what colossus already stores on device (`RouteStop.kindRaw`), so the app can
/// use this type without migrating its store.
public enum RouteStopKind: String, Codable, Sendable, CaseIterable {
    /// A fixed place: a showplace (see `RouteStopDTO.showplaceId`) or an Apple Maps result.
    case place
    /// Wherever the device is when the route is shown or handed off. Carries no coordinates: where
    /// the user was when they planned is never stored.
    case currentLocation
}

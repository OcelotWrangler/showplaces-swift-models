//
//  RouteStopDTO.swift
//
//
//  Created by Kevin Barnes on 10/6/26.
//

import Foundation

/// One stop on a route, used for reads and writes alike: nothing on a stop is server-computed.
///
/// A stop's order is its position in `stops`, so there is no position field to disagree with it.
///
/// **A reference and a snapshot** (`showplaces-route-planning.md`). `showplaceId` lets a client open
/// the showplace the stop came from. `title` and the coordinate are what the route actually runs on,
/// and they survive the showplace being deleted or no longer shared. The reference may name a
/// showplace the server has never seen (one kept on a single device), so it is not checked against
/// anything: a client that can't resolve it just can't tap into that stop.
///
/// The leg times a client caches for each stop are device-only and deliberately absent: every
/// device recomputes them from MapKit.
public struct RouteStopDTO: Codable, Sendable, Hashable, Identifiable {

    /// Client-assigned.
    public var id: UUID
    public var kind: RouteStopKind
    /// The showplace this stop came from, while it still exists. See the type's note.
    public var showplaceId: UUID?
    /// Empty for a current-location stop.
    public var title: String
    /// Nil for a current-location stop, required for a place.
    public var latitude: Double?
    public var longitude: Double?
    /// The raw value of an `MKMapItem.Identifier`, for an Apple Maps result or a showplace made from
    /// one. Lets the hand-off open the real place rather than a dropped pin.
    public var mapItemIdentifier: String?
    /// Ends a day: drives the Day 1, Day 2… grouping and per-day hand-off.
    public var isOvernight: Bool
    /// The chosen alternate for the leg *leaving* this stop, by MapKit's route name ("I-20 W"). Nil
    /// means the fastest.
    public var preferredLegName: String?

    public init(
        id: UUID = UUID(),
        kind: RouteStopKind,
        showplaceId: UUID? = nil,
        title: String = "",
        latitude: Double? = nil,
        longitude: Double? = nil,
        mapItemIdentifier: String? = nil,
        isOvernight: Bool = false,
        preferredLegName: String? = nil
    ) {
        self.id = id
        self.kind = kind
        self.showplaceId = showplaceId
        self.title = title
        self.latitude = latitude
        self.longitude = longitude
        self.mapItemIdentifier = mapItemIdentifier
        self.isOvernight = isOvernight
        self.preferredLegName = preferredLegName
    }
}

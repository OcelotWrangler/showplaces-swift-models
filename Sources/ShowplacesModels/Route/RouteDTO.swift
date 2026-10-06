//
//  RouteDTO.swift
//
//
//  Created by Kevin Barnes on 10/6/26.
//

import Foundation

/// A planned drive: an ordered list of stops, start first and end last. See
/// `showplaces-route-planning.md`.
///
/// Only the stops are stored. The roads between them come from MapKit on each device.
///
/// Routes are owner-only for now. Sharing fields (`ownershipStatus`, `ownerDisplayName`) arrive with
/// route sharing.
public struct RouteDTO: Codable, Sendable, Hashable, Identifiable {

    public var id: UUID
    /// Empty until the user names the route; clients derive a title from its ends until then.
    public var title: String
    public var transportType: RouteTransportType
    public var stops: [RouteStopDTO]
    /// When the route was made, as the client that made it recorded it.
    public var created: Date
    /// When the user last changed the route, as their client recorded it. This orders the Routes
    /// list, and it is not `updated`: a stop following its renamed showplace is synced, but it isn't
    /// the user editing the route and shouldn't move it up the list.
    public var edited: Date
    /// When the server last wrote the route. The sync engine's version marker.
    public var updated: Date

    public init(
        id: UUID,
        title: String,
        transportType: RouteTransportType,
        stops: [RouteStopDTO],
        created: Date,
        edited: Date,
        updated: Date
    ) {
        self.id = id
        self.title = title
        self.transportType = transportType
        self.stops = stops
        self.created = created
        self.edited = edited
        self.updated = updated
    }
}

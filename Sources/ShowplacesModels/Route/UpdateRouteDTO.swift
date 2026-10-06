//
//  UpdateRouteDTO.swift
//
//
//  Created by Kevin Barnes on 10/6/26.
//

import Foundation

/// Replaces a route wholesale, stops included: the client holds the whole route, and its order is
/// the truth.
public struct UpdateRouteDTO: Codable, Sendable, Hashable, Identifiable {

    public var id: UUID
    public var title: String
    public var transportType: RouteTransportType
    /// In order, start first. Replaces every stop the route had.
    public var stops: [RouteStopDTO]
    /// See `RouteDTO.edited`. Unchanged when the update isn't the user's own edit.
    public var edited: Date

    public init(
        id: UUID,
        title: String,
        transportType: RouteTransportType,
        stops: [RouteStopDTO],
        edited: Date
    ) {
        self.id = id
        self.title = title
        self.transportType = transportType
        self.stops = stops
        self.edited = edited
    }
}

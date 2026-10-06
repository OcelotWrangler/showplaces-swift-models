//
//  CreateRouteDTO.swift
//
//
//  Created by Kevin Barnes on 10/6/26.
//

import Foundation

public struct CreateRouteDTO: Codable, Sendable, Hashable {

    /// Client-assigned. See `CreateShowplaceDTO.id`: the same idempotency contract.
    public var id: UUID

    public var title: String
    public var transportType: RouteTransportType
    /// In order, start first. See `RouteStopDTO`.
    public var stops: [RouteStopDTO]
    /// See `RouteDTO.created`.
    public var created: Date
    /// See `RouteDTO.edited`.
    public var edited: Date

    public init(
        id: UUID = UUID(),
        title: String,
        transportType: RouteTransportType = .automobile,
        stops: [RouteStopDTO],
        created: Date,
        edited: Date
    ) {
        self.id = id
        self.title = title
        self.transportType = transportType
        self.stops = stops
        self.created = created
        self.edited = edited
    }
}

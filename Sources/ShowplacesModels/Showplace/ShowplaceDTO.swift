//
//  ShowplaceDTO.swift
//
//
//  Created by Kevin Barnes on 5/11/24.
//

import Foundation

public struct ShowplaceDTO: Codable, Sendable, Hashable, Identifiable {
    
    public var id: UUID
    public var title: String
    public var subtitle: String?
    public var description: String?
    public var tags: [TagDTO]
    public var created: Date
    public var updated: Date
    public var latitude: Double
    public var longitude: Double
    public var postalAddress: PostalAddressDTO
    /// Apple Maps' identifier for the place this showplace was created from — the raw value of
    /// `MKMapItem.Identifier`. Nil when the showplace was dropped as a pin or typed in rather than
    /// picked from a place Apple Maps knows. Opaque to the server, which only stores it: the client
    /// resolves it with `MKMapItemRequest` to open the place in Apple Maps or show its place card.
    public var mapItemIdentifier: String?
    public var visited: Bool
    public var ownershipStatus: OwnershipStatus
    
    public init(
        id: UUID,
        title: String,
        subtitle: String? = nil,
        description: String? = nil,
        tags: [TagDTO],
        created: Date,
        updated: Date,
        latitude: Double,
        longitude: Double,
        postalAddress: PostalAddressDTO,
        mapItemIdentifier: String? = nil,
        visited: Bool,
        ownershipStatus: OwnershipStatus
    ) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
        self.description = description
        self.tags = tags
        self.created = created
        self.updated = updated
        self.latitude = latitude
        self.longitude = longitude
        self.postalAddress = postalAddress
        self.mapItemIdentifier = mapItemIdentifier
        self.visited = visited
        self.ownershipStatus = ownershipStatus
    }
}

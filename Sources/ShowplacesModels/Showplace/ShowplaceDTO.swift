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
        self.visited = visited
        self.ownershipStatus = ownershipStatus
    }
}

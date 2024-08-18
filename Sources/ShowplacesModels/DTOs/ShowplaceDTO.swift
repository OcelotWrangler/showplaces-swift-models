//
//  ShowplaceDTO.swift
//
//
//  Created by Kevin Barnes on 5/11/24.
//

import Vapor

public struct ShowplaceDTO: Content, Hashable, Identifiable {
    
    public var id: UUID
    public var title: String
    public var subtitle: String?
    public var description: String?
    public var tags: [TagDTO]
    public var mediaKeys: [String]
    public var created: Date
    public var updated: Date
    public var startDate: Date?
    public var endDate: Date?
    public var latitude: Double
    public var longitude: Double
    public var postalAddress: PostalAddressDTO
    public var accessibleByLink: Bool
    public var visited: Bool
    
    public init(
        id: UUID,
        title: String,
        subtitle: String? = nil,
        description: String? = nil,
        tags: [TagDTO],
        mediaKeys: [String],
        created: Date,
        updated: Date,
        startDate: Date? = nil,
        endDate: Date? = nil,
        latitude: Double,
        longitude: Double,
        postalAddress: PostalAddressDTO,
        accessibleByLink: Bool,
        visited: Bool
    ) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
        self.description = description
        self.tags = tags
        self.mediaKeys = mediaKeys
        self.created = created
        self.updated = updated
        self.startDate = startDate
        self.endDate = endDate
        self.latitude = latitude
        self.longitude = longitude
        self.postalAddress = postalAddress
        self.accessibleByLink = accessibleByLink
        self.visited = visited
    }
}

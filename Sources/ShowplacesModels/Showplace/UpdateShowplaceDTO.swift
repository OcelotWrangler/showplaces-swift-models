//
//  UpdateShowplaceDTO.swift
//  
//
//  Created by Kevin Barnes on 5/12/24.
//

import Foundation

public struct UpdateShowplaceDTO: Codable, Sendable, Hashable, Identifiable {
    
    public var id: UUID
    public var title: String
    public var subtitle: String?
    public var description: String?
    public var tags: [UpdateTagDTO]
    public var groupIds: [UUID]
    public var mediaKeys: [String]
    public var latitude: Double
    public var longitude: Double
    public var postalAddress: UpdatePostalAddressDTO
    
    public init(
        id: UUID,
        title: String,
        subtitle: String? = nil,
        description: String? = nil,
        tags: [UpdateTagDTO],
        groupIds: [UUID],
        mediaKeys: [String],
        latitude: Double,
        longitude: Double,
        postalAddress: UpdatePostalAddressDTO
    ) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
        self.description = description
        self.tags = tags
        self.groupIds = groupIds
        self.mediaKeys = mediaKeys
        self.latitude = latitude
        self.longitude = longitude
        self.postalAddress = postalAddress
    }
}

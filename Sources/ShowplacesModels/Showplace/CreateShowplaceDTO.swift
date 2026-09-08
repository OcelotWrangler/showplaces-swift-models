//
//  CreateShowplaceDTO.swift
//
//
//  Created by Kevin Barnes on 5/11/24.
//

import Vapor

public struct CreateShowplaceDTO: Content, Hashable {
    
    /// Assigned by the client so a showplace has an identity before it reaches the server.
    ///
    /// This is the idempotency key: creating with an id that already exists returns the existing
    /// record rather than a duplicate, which is what makes a create safe to retry after a dropped
    /// response. It also lets a showplace created offline be referenced locally — by its tags, its
    /// media and its group membership — before it has ever synced.
    public var id: UUID
    
    public var title: String
    public var subtitle: String?
    public var description: String?
    public var tags: [CreateTagDTO]
    public var groupIds: [UUID]
    public var mediaKeys: [String]
    public var latitude: Double
    public var longitude: Double
    public var postalAddress: CreatePostalAddressDTO
    
    public init(
        id: UUID = UUID(),
        title: String,
        subtitle: String? = nil,
        description: String? = nil,
        tags: [CreateTagDTO],
        groupIds: [UUID],
        mediaKeys: [String],
        latitude: Double,
        longitude: Double,
        postalAddress: CreatePostalAddressDTO
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

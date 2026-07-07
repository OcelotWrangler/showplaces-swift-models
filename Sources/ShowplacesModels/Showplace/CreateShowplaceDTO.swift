//
//  CreateShowplaceDTO.swift
//
//
//  Created by Kevin Barnes on 5/11/24.
//

import Vapor

public struct CreateShowplaceDTO: Content, Hashable {
    
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

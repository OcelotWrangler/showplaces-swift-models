//
//  UpdateShowplaceDTO.swift
//  
//
//  Created by Kevin Barnes on 5/12/24.
//

import Vapor

public struct UpdateShowplaceDTO: Content, Hashable, Identifiable {
    
    public var id: UUID
    public var title: String
    public var subtitle: String?
    public var description: String?
    public var tagIds: [UUID]
    public var groupIds: [UUID]
    public var imageKeys: [String]
    public var startDate: Date?
    public var endDate: Date?
    public var latitude: Double
    public var longitude: Double
    public var postalAddress: UpdatePostalAddressDTO
    
    public init(
        id: UUID,
        title: String,
        subtitle: String? = nil,
        description: String? = nil,
        tagIds: [UUID],
        groupIds: [UUID],
        imageKeys: [String],
        startDate: Date? = nil,
        endDate: Date? = nil,
        latitude: Double,
        longitude: Double,
        postalAddress: UpdatePostalAddressDTO
    ) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
        self.description = description
        self.tagIds = tagIds
        self.groupIds = groupIds
        self.imageKeys = imageKeys
        self.startDate = startDate
        self.endDate = endDate
        self.latitude = latitude
        self.longitude = longitude
        self.postalAddress = postalAddress
    }
}

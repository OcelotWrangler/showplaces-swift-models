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
    public var tagIds: [UUID]
    public var groupIds: [UUID]
    public var mediaKeys: [String]
    public var startDate: Date?
    public var endDate: Date?
    public var latitude: Double
    public var longitude: Double
    public var postalAddress: CreatePostalAddressDTO
    public var visited: Bool
    
    public init(
        title: String,
        subtitle: String? = nil,
        description: String? = nil,
        tagIds: [UUID],
        groupIds: [UUID],
        mediaKeys: [String],
        startDate: Date? = nil,
        endDate: Date? = nil,
        latitude: Double,
        longitude: Double,
        postalAddress: CreatePostalAddressDTO,
        visited: Bool = false
    ) {
        self.title = title
        self.subtitle = subtitle
        self.description = description
        self.tagIds = tagIds
        self.groupIds = groupIds
        self.mediaKeys = mediaKeys
        self.startDate = startDate
        self.endDate = endDate
        self.latitude = latitude
        self.longitude = longitude
        self.postalAddress = postalAddress
        self.visited = visited
    }
}

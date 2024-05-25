//
//  ShowplaceDTO.swift
//
//
//  Created by Kevin Barnes on 5/11/24.
//

import Fluent
import Vapor

public struct ShowplaceDTO: Content, Hashable, Identifiable {
    
    public var id: UUID
    public var title: String
    public var subtitle: String?
    public var description: String?
    public var tags: [TagDTO]
    public var imageKeys: [String]
    public var created: Date
    public var updated: Date
    public var startDate: Date?
    public var endDate: Date?
    public var latitude: Double
    public var longitude: Double
    public var postalAddress: PostalAddressDTO
    
    public init(
        id: UUID,
        title: String,
        subtitle: String? = nil,
        description: String? = nil,
        tags: [TagDTO],
        imageKeys: [String],
        created: Date,
        updated: Date,
        startDate: Date? = nil,
        endDate: Date? = nil,
        latitude: Double,
        longitude: Double,
        postalAddress: PostalAddressDTO
    ) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
        self.description = description
        self.tags = tags
        self.imageKeys = imageKeys
        self.created = created
        self.updated = updated
        self.startDate = startDate
        self.endDate = endDate
        self.latitude = latitude
        self.longitude = longitude
        self.postalAddress = postalAddress
    }
    
    public init?(showplace: Showplace, db: Database) async throws {
        guard let id = showplace.id else {
            return nil
        }
        self.id = id
        
        self.title = showplace.title
        self.subtitle = showplace.subtitle
        self.description = showplace.description
        
        let tags = try await showplace.$tags.get(on: db)
        self.tags = tags
            .map { TagDTO(tag: $0) }
            .filter { $0 != nil }
            .map { $0! }
        
        self.imageKeys = showplace.imageKeys
        
        guard let created = showplace.created else {
            return nil
        }
        self.created = created
        
        guard let updated = showplace.updated else {
            return nil
        }
        self.updated = updated
        
        self.startDate = showplace.startDate
        self.endDate = showplace.endDate
        self.latitude = showplace.latitude
        self.longitude = showplace.longitude
        
        let postalAddress = try await showplace.$postalAddress.get(on: db)
        guard let postalAddress = PostalAddressDTO(postalAddress: postalAddress) else {
            return nil
        }
        self.postalAddress = postalAddress
    }
}

//
//  Showplace.swift
//
//
//  Created by Kevin Barnes on 4/25/24.
//

import Fluent
import Foundation

public final class Showplace: Model {
    
    public static let schema = "showplaces"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "title")
    public var title: String
    
    @OptionalField(key: "subtitle")
    public var subtitle: String?
    
    @OptionalField(key: "description")
    public var description: String?
    
    @Siblings(
        through: ShowplaceTag.self,
        from: \.$showplace,
        to: \.$tag
    )
    public var tags: [Tag]
    
    @Siblings(
        through: ShowplaceGroup.self,
        from: \.$showplace,
        to: \.$group
    )
    public var groups: [Group]
    
    @Field(key: "image_keys")
    public var imageKeys: [String]
    
    @Timestamp(key: "created", on: .create)
    public var created: Date?

    @Timestamp(key: "updated", on: .update)
    public var updated: Date?
    
    @OptionalField(key: "startDate")
    public var startDate: Date?
    
    @OptionalField(key: "endDate")
    public var endDate: Date?
    
    @Field(key: "latitude")
    public var latitude: Double
    
    @Field(key: "longitude")
    public var longitude: Double
    
    @Parent(key: "postal_address_id")
    public var postalAddress: PostalAddress
    
//    @OptionalParent(key: "owner_id")
//    var owner: User?
    
//    /// Users this showplace has been shared with.
//    @Children(for: \.$showplace)
//    var shared: [SharedShowplace]
    
    // TODO: Need a boolean that's something like `accessibleByLink` because we use UUIDS for the id it's almost impossible for someone to just guess a showplace uuid but we could have a setting that allows them to be "public"
    
    public init() { }
    
    public init(
        title: String,
        subtitle: String? = nil,
        description: String? = nil,
        imageKeys: [String] = [],
        startDate: Date? = nil,
        endDate: Date? = nil,
        latitude: Double,
        longitude: Double
    ) {
        self.title = title
        self.subtitle = subtitle
        self.description = description
        self.imageKeys = imageKeys
        self.startDate = startDate
        self.endDate = endDate
        self.latitude = latitude
        self.longitude = longitude
    }
}

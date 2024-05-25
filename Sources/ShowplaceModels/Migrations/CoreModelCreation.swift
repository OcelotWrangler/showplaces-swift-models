//
//  CoreModelCreation.swift
//  
//
//  Created by Kevin Barnes on 4/25/24.
//

import Fluent

public struct CoreModelCreation: AsyncMigration {
    public func prepare(on database: Database) async throws {
        try await database.schema("postal_addresses")
            .id()
            .field("street", .string, .required)
            .field("sub_locality", .string, .required)
            .field("postal_code", .string, .required)
            .field("city", .string, .required)
            .field("sub_administrative_area", .string, .required)
            .field("state", .string, .required)
            .field("country", .string, .required)
            .field("iso_country_code", .string, .required)
            .create()
        
        try await database.schema("showplaces")
            .id()
            .field("title", .string, .required)
            .field("subtitle", .string)
            .field("description", .string)
            .field("image_keys", .array(of: .string), .required)
            .field("created", .datetime)
            .field("updated", .datetime)
            .field("startDate", .datetime)
            .field("endDate", .datetime)
            .field("latitude", .double, .required)
            .field("longitude", .double, .required)
            .foreignKey("postal_address_id", references: "postal_addresses", "id", onDelete: .cascade)
//            .field("owner_id", .uuid, .references("users", "id"))
            .unique(on: "postal_address_id")
            .create()
        
        try await database.schema("groups")
            .id()
            .field("title", .string, .required)
            .field("description", .string)
            .field("created", .datetime)
            .field("updated", .datetime)
            .field("image_key", .string)
            .field("show_title_on_header", .bool, .required)
//            .field("owner_id", .uuid, .references("users", "id"))
            .create()
        
        try await database.schema("tags")
            .id()
            .field("title", .string, .required)
            .field("color", .string)
            .field("sf_symbol", .string)
            .field("archived", .bool, .required)
            .field("created", .datetime)
            .field("updated", .datetime)
            .field("owner_id", .uuid, .required, .references("users", "id"))
//            .unique(on: "owner_id", "title")
            .create()
        
        try await database.schema("showplace_tags")
            .id()
            .field("showplace_id", .uuid, .required, .references("showplaces", "id"))
            .field("tag_id", .uuid, .required, .references("tags", "id"))
            .unique(on: "showplace_id", "tag_id")
            .create()
        
        try await database.schema("group_tags")
            .id()
            .field("group_id", .uuid, .required, .references("groups", "id"))
            .field("tag_id", .uuid, .required, .references("tags", "id"))
            .unique(on: "group_id", "tag_id")
            .create()
        
        try await database.schema("showplace_groups")
            .id()
            .field("showplace_id", .uuid, .required, .references("showplaces", "id"))
            .field("group_id", .uuid, .required, .references("groups", "id"))
            .unique(on: "showplace_id", "group_id")
            .create()
    }

    public func revert(on database: Database) async throws {
        try await database.schema("showplace_tags").delete()
        try await database.schema("showplace_groups").delete()
        try await database.schema("group_tags").delete()
        try await database.schema("tags").delete()
        try await database.schema("groups").delete()
        try await database.schema("showplaces").delete()
        try await database.schema("postal_addresses").delete()
    }
}

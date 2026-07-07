//
//  MediaDTO.swift
//
//
//  Created by Kevin Barnes on 6/25/26.
//

import Foundation
import Vapor

public struct MediaDTO: Content, Hashable, Identifiable {
    
    public let id: Int
    public var created: Date
    public var width: Int?
    public var height: Int?
    public var fileSize: Int?
    public var duration: Double?
    public var key: String
    public var url: String
    public var contentType: String
    public var thumbnailKey: String?
    public var thumbnailUrl: String?
    public var thumbnailWidth: Int?
    public var thumbnailHeight: Int?
    
    public init(
        id: Int,
        created: Date,
        width: Int? = nil,
        height: Int? = nil,
        fileSize: Int? = nil,
        duration: Double? = nil,
        key: String,
        url: String,
        contentType: String,
        thumbnailKey: String? = nil,
        thumbnailUrl: String? = nil,
        thumbnailWidth: Int? = nil,
        thumbnailHeight: Int? = nil
    ) {
        self.id = id
        self.created = created
        self.width = width
        self.height = height
        self.fileSize = fileSize
        self.duration = duration
        self.key = key
        self.url = url
        self.contentType = contentType
        self.thumbnailKey = thumbnailKey
        self.thumbnailUrl = thumbnailUrl
        self.thumbnailWidth = thumbnailWidth
        self.thumbnailHeight = thumbnailHeight
    }
}

//
//  PostalAddressDTO.swift
//
//
//  Created by Kevin Barnes on 5/11/24.
//

import Foundation
import Vapor

public struct PostalAddressDTO: Content, Hashable, Identifiable {
    
    public var id: UUID
    public var street: String
    public var subLocality: String
    public var postalCode: String
    public var city: String
    public var subAdministrativeArea: String
    public var state: String
    public var country: String
    public var isoCountryCode: String
    
    public init(
        id: UUID,
        street: String,
        subLocality: String,
        postalCode: String,
        city: String,
        subAdministrativeArea: String,
        state: String,
        country: String,
        isoCountryCode: String
    ) {
        self.id = id
        self.street = street
        self.subLocality = subLocality
        self.postalCode = postalCode
        self.city = city
        self.subAdministrativeArea = subAdministrativeArea
        self.state = state
        self.country = country
        self.isoCountryCode = isoCountryCode
    }
}

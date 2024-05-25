//
//  PostalAddress.swift
//
//
//  Created by Kevin Barnes on 4/25/24.
//

import Fluent
import Foundation

public final class PostalAddress: Model {
    
    public static let schema = "postal_addresses"
    
    @ID(key: .id)
    public var id: UUID?
    
    @Field(key: "street")
    public var street: String
    
    @Field(key: "sub_locality")
    public var subLocality: String
    
    @Field(key: "postal_code")
    public var postalCode: String
    
    @Field(key: "city")
    public var city: String
    
    @Field(key: "sub_administrative_area")
    public var subAdministrativeArea: String
    
    @Field(key: "state")
    public var state: String
    
    @Field(key: "country")
    public var country: String
    
    @Field(key: "iso_country_code")
    public var isoCountryCode: String
    
    @OptionalChild(for: \.$postalAddress)
    public var showplace: Showplace?
    
    public init() { }
    
    public init(
        street: String,
        subLocality: String,
        postalCode: String,
        city: String,
        subAdministrativeArea: String,
        state: String,
        country: String,
        isoCountryCode: String
    ) {
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

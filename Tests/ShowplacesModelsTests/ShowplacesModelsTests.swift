import XCTest
@testable import ShowplacesModels

final class ShowplacesModelsTests: XCTestCase {

    /// TestFlight builds from before group sharing decode an accept as `SuccessStatus`; the richer
    /// response must still read as a success to them.
    func testAcceptInviteResponseDecodesAsSuccessStatus() throws {
        let response = AcceptInviteResponse(groupId: UUID(), showplaceIds: [UUID()], showplaceIdsNotCopied: [UUID()])
        let data = try JSONEncoder().encode(response)
        let status = try JSONDecoder().decode(SuccessStatus.self, from: data)
        XCTAssertTrue(status.success)
    }

    /// colossus stores these raw values on device, so they can't change without a store migration.
    func testRouteEnumRawValuesMatchTheAppStore() {
        XCTAssertEqual(RouteStopKind.place.rawValue, "place")
        XCTAssertEqual(RouteStopKind.currentLocation.rawValue, "currentLocation")
        XCTAssertEqual(RouteTransportType.automobile.rawValue, "automobile")
    }

    /// A current-location stop has no coordinate and no showplace, and must round-trip that way.
    func testRouteRoundTripsCurrentLocationStop() throws {
        let route = RouteDTO(
            id: UUID(),
            title: "",
            transportType: .automobile,
            stops: [
                RouteStopDTO(kind: .currentLocation),
                RouteStopDTO(kind: .place, showplaceId: UUID(), title: "COTA", latitude: 30.13, longitude: -97.64, isOvernight: true, preferredLegName: "I-20 W"),
            ],
            created: Date(timeIntervalSince1970: 1_000),
            edited: Date(timeIntervalSince1970: 2_000),
            updated: Date(timeIntervalSince1970: 3_000)
        )
        let decoded = try JSONDecoder().decode(RouteDTO.self, from: JSONEncoder().encode(route))
        XCTAssertEqual(decoded, route)
        XCTAssertNil(decoded.stops[0].latitude)
    }
}

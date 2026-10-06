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

    /// A newer server may send a code this build doesn't know; the rest of the error must still read.
    func testAccountErrorResponseDecodesUnknownCode() throws {
        let json = #"{"error":true,"reason":"Nope","code":"somethingNew","retryAfterSeconds":30}"#
        let response = try JSONDecoder().decode(AccountErrorResponse.self, from: Data(json.utf8))
        XCTAssertEqual(response.code, .unknown)
        XCTAssertEqual(response.retryAfterSeconds, 30)
        XCTAssertNil(response.attemptsRemaining)
    }

    /// The server encodes this as the body of every failed account request; it must round-trip.
    func testAccountErrorResponseRoundTrips() throws {
        let response = AccountErrorResponse(reason: "Wrong code", code: .incorrectCode, attemptsRemaining: 3)
        let decoded = try JSONDecoder().decode(AccountErrorResponse.self, from: JSONEncoder().encode(response))
        XCTAssertTrue(decoded.error)
        XCTAssertEqual(decoded.code, .incorrectCode)
        XCTAssertEqual(decoded.attemptsRemaining, 3)
    }

    /// Builds from before email codes decode only the two tokens; the richer response must still read.
    func testLoginResponseDecodesForOlderClients() throws {
        struct OldLoginResponse: Decodable {
            var accessToken: String
            var refreshToken: UUID
        }

        let user = UserDTO(id: UUID(), email: "a@b.c", username: "a", created: Date(), updated: Date())
        let response = LoginResponse(accessToken: "jwt", refreshToken: UUID(), user: user, isNewAccount: true)
        let old = try JSONDecoder().decode(OldLoginResponse.self, from: JSONEncoder().encode(response))
        XCTAssertEqual(old.refreshToken, response.refreshToken)
    }
}

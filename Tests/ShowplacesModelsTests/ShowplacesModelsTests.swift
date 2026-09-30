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
}
